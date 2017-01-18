class AddColumnToModels < ActiveRecord::Migration[5.0]
  def change
    add_column :models, :car_id, :integer
  end
end
