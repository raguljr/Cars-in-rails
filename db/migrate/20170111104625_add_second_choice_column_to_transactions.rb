class AddSecondChoiceColumnToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :Secondchoice, :string
  end
end
