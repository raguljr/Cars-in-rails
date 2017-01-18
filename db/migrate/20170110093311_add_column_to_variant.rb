class AddColumnToVariant < ActiveRecord::Migration[5.0]
  def change
    add_column :variants, :model_id, :integer
  end
end
