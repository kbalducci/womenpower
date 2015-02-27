class AddReferencesToInspiration < ActiveRecord::Migration
  def change
    add_column :inspirations, :category_id, :integer
    add_index :inspirations, :category_id
  end
end
