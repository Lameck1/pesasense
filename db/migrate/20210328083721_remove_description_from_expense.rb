class RemoveDescriptionFromExpense < ActiveRecord::Migration[6.1]
  def change
    remove_column :expenses, :description, :text
  end
end
