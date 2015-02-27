class AddColumnsToInspiration < ActiveRecord::Migration
  def change
    rename_column :inspirations, :person, :name, null: false
    rename_column :inspirations, :keyword, :category, null: false
    add_column :inspirations, :issue, :string, null: false
  end
end
