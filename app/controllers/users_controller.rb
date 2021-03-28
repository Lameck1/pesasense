class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user
      session[:user_id] = @user.id
      flash[:notice] = 'Sign Up successful!'
      redirect_to(root_path)
    else
      render('new')
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
