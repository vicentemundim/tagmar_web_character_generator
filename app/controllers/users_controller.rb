class UsersController < ApplicationController
  resource_controller

  create do
    before { logout_keeping_session! }
    after { self.current_user = @user }

    success do
      flash "Thanks for signing up! Please, login now to access your account."
      wants.html { redirect_back_or_default('/') }
    end

    failure.flash "Could not create your account."
  end
end
