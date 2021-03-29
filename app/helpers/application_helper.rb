module ApplicationHelper
  def error_messages_for(object)
    render(partial: 'layouts/error_messages', locals: { object: object })
  end

  def show_user_icon(user)
    "<div> #{image_tag(user.icon, class: 'user-icon')}</div>".html_safe
  end

  def access_button
    if @current_user
      (link_to 'Log Out', logout_path, method: :delete, class: 'btn btn-dark my-2').to_s.html_safe
    else
      (link_to 'Log In', login_path, class: 'btn btn-dark my-2').to_s.html_safe
    end
  end
end
