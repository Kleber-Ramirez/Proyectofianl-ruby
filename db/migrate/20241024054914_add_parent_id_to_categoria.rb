class AddParentIdToCategoria < ActiveRecord::Migration[7.2]
  def change
    add_column :categoria, :parent_id, :integer
  end
end
