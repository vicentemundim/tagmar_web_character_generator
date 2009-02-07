class UsersController < ResourceController::Base
  before_filter :prevent_user_update_other_users_data, :only => [:edit, :update]

  [new_action, edit].each do |action|
    action.before do
      @user.password = @user.password_confirmation = nil
    end
  end

  create do
    before { logout_keeping_session! }
    after { self.current_user = @user }

    success do
      flash "Obrigado por registrar-se!"
      wants.html { redirect_back_or_default('/') }
    end

    failure.flash "Corrija os erros abaixo."
  end

  update.wants.html { redirect_to edit_user_path(@user) }
  update.flash "Perfil atualizado com sucesso"

  def prevent_user_update_other_users_data
    unless current_user.id.to_s == params[:id]
      flash[:error] = "Não é possível editar dados de outros usuários."
      redirect_to('/')
    end
  end
end
