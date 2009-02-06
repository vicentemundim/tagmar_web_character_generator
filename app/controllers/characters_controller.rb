class CharactersController < ResourceController::Base
  before_filter :login_required
  before_filter :prevent_user_to_update_other_users_characters, :only => [:new, :create, :edit, :update]

  belongs_to :user

  def prevent_user_to_update_other_users_characters
    unless current_user.id.to_s == params[:user_id]
      flash[:error] = "Cannot update other users characters."
      redirect_to('/')
    end
  end
end
