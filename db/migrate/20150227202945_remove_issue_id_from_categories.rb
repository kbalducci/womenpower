class RemoveIssueIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :issue_id, :integer
  end
end
