class AccessController < ApplicationController
  def new
    redirect_to(root_path) if current_user
  end

  def create
    user = User.find_by_name(params[:name])
    if user
      cookies[:name] = user.name
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
