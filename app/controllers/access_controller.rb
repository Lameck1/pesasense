class AccessController < ApplicationController
  def new; end

  def create
    user = User.find_by_username(params[:username])
    if user
      cookies[:username] = user.username
      session[:user_id] = user.id
      flash[:notice] = 'Log in successful'
      redirect_to(root_path)
    else
      flash[:alert] = 'Invalid User!'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Log out successful!'
    redirect_to(login_path)
  end
end
