class AddIssueIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :issue_id, :integer
    add_index :categories, :issue_id
  end
end
