class AddIssueIdToInspirations < ActiveRecord::Migration
  def change
    add_column :inspirations, :issue_id, :integer
    add_index :inspirations, :issue_id
  end
end
