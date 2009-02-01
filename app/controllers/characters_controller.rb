class CharactersController < ApplicationController
  resource_controller

  before_filter :login_required

  belongs_to :user
end
