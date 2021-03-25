class ApplicationController < ActionController::Base
  layout 'application'

  def logged_in?
    session[:user_id] != nil
  end

  def confirm_logged_in
    return if logged_in?

    flash[:notice] = 'Please log in!'
    redirect_to(login_path)
  end
end
