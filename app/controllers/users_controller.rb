class UsersController < ResourceController::Base
  before_filter :prevent_user_update_other_users_data, :only => [:edit, :update]

  create do
    before { logout_keeping_session! }
    after { self.current_user = @user }

    success do
      flash "Thanks for signing up! Please, login now to access your account."
      wants.html { redirect_back_or_default('/') }
    end

    failure.flash "Could not create your account."
  end

  update.wants.html { redirect_to('/') }

  def prevent_user_update_other_users_data
    unless current_user.id.to_s == params[:id]
      flash[:error] = "Cannot update other users data."
      redirect_to('/')
    end
  end
end
