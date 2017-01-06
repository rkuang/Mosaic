class AddAttachmentPictureToTiles < ActiveRecord::Migration
  def self.up
    change_table :tiles do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :tiles, :picture
  end
end
