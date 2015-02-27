class RemoveStuffFromInspiration < ActiveRecord::Migration
  def change
    remove_column :inspirations, :category
    remove_column :inspirations, :issue
  end
end
