class BudgetsController < ApplicationController
  before_action :confirm_logged_in, only: %i[index new create edit update show destroy]

  def index
    @budgets = current_user.budgets.ordered
  end

  def new
    @budget = Budget.new
    @groups = current_user.groups
  end

  def create
    @budget = current_user.budgets.build(budget_params)
    if @budget.save
      flash[:notice] = 'Budget saved!'
      redirect_to(budgets_path)
    else
      render('new')
    end
  end

  def edit
    @budget = Budget.find(params[:id])
    @groups = current_user.groups
  end

  def update
    @budget = Budget.find(params[:id])
    if @budget.update(budget_params)
      flash[:notice] = 'Budget updated'
      redirect_to(budget_path(@budget))
    else
      render('edit')
    end
  end

  def show
    @budget = Budget.find(params[:id])
    @budget_group_total = @budget.group.expenses.map(&:amount).inject(:+)
  end

  def destroy
    @budget = Budget.find(params[:id])
    @budget.destroy
    flash[:notice] = 'Budget deleted'
    redirect_to(budgets_path)
  end

  private

  def budget_params
    params.require(:budget).permit(:user_id, :group_id, :amount)
  end
end
