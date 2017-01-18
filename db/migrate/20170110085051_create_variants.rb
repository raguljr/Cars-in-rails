class CreateVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :variants do |t|
      t.string :name
      t.string :engine
      t.string :litres
      t.string :features
      t.integer :stock
      t.integer :cost

      t.timestamps
    end
  end
end
