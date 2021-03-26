class ApplicationController < ActionController::Base
  layout 'application'

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end

  def confirm_logged_in
    return if logged_in?

    flash[:alert] = 'Please log in!'
    redirect_to(login_path)
  end
end
