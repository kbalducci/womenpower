class AddColumnsToInspiration < ActiveRecord::Migration
  def change
    rename_column :inspirations, :person, :name
    rename_column :inspirations, :keyword, :category
    add_column :inspirations, :issue, :string, null: false
  end
end
