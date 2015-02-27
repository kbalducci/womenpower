class AddAttachmentPictureToInspirations < ActiveRecord::Migration
  def self.up
    change_table :inspirations do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :inspirations, :picture
  end
end
