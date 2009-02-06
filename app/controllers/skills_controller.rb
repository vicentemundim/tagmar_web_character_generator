class SkillsController < ResourceController::Base
  before_filter :admin_login_required, :except => [:index, :show]
  before_filter :login_required, :only => [:index, :show]
end
