class RemoveModFromTransactions < ActiveRecord::Migration[5.0]
  def change
    remove_column :transactions, :model_id, :integer
  end
end
