class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :customer_id
      t.integer :variant_id
      t.integer :model_id
      t.integer :cost

      t.timestamps
    end
  end
end
