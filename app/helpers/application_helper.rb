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

  def toggler_for(target_id, toggler_id, start_hidden = false)
    if start_hidden
      link_to_function '[exibir]', "toggleWithEffect('#{target_id}', '#{toggler_id}');", :id => toggler_id
    else
      link_to_function '[esconder]', "toggleWithEffect('#{target_id}', '#{toggler_id}');", :id => toggler_id
    end
  end

  def render_field_for(label, value, options = {})
    options.reverse_merge!({ :class => 'field' })

    content_tag(:div, :class => options[:class]) do
      content = content_tag(:label, label)
      content += content_tag(:span, value)
      content += content_tag(:div, nil, :class => 'clear')
    end
  end

  def render_last_field_for(label, value, options = {})
    options.reverse_merge!({ :class => 'field lastField' })
    render_field_for(label, value, options)
  end
end
