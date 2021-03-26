class ExpensesController < ApplicationController
  before_action :confirm_logged_in, only: %i[new create show index external]

  def new
    @expense = Expense.new
    @groups = current_user.groups
  end

  def create
    @expense = current_user.expenses.build(expense_params)
    if @expense.save
      flash[:notice] = 'Expense saved!'
      redirect_to(root_path)
    else
      render :new
    end
  end

  def index
    @expenses = current_user.expenses.ordered
    @expenses_total = @expenses.map(&:amount).inject(:+)
  end

  def external
    @expenses = current_user.expenses.non_grouped
    @expenses_total = @expenses.map(&:amount).inject(:+)
  end

  private

    def expense_params
      params.require(:expense).permit(:name, :amount, :description, :group_id)
    end
end
