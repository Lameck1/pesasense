class UsersController < ApplicationController
  before_action :confirm_logged_in, only: %i[show]

  def new
  end

  def index
  end

  def show
  end
end
