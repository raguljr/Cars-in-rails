class RemoveColumnFromModels < ActiveRecord::Migration[5.0]
  def change
    remove_column :models, :colors, :string
  end
end
