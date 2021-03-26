class GroupsController < ApplicationController
  before_action :confirm_logged_in, only: %i[new create show index]

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.build(group_params)
    if @group.save
      flash[:success] = "#{@group.name} group created"
      redirect_to(groups_path)
    else
      render :new
    end
  end

  def index
    @groups = current_user.groups.ordered
  end

  def show
    @group = Group.find(params[:id])
    @group_total = @group.expenses.map(&:amount).inject(:+)
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
