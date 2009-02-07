require 'md5'

# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  include AuthenticatedSystem

  def sidebar_enabled?
    'style="display: block;"' if @sidebar_enabled
  end

  def avatar_url(width = 80)
    if logged_in?
      default_avatar_url = "http://#{request.env['HTTP_HOST']}/images/default_avatar.gif"
      "http://www.gravatar.com/avatar/#{MD5.md5(current_user.email)}?s=#{width}&default=#{default_avatar_url}"
    end
  end
end
