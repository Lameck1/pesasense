class GroupsController < ApplicationController
  before_action :confirm_logged_in, only: %i[new create show index]
  
  def new
  end

  def index
  end

  def show
  end
end
