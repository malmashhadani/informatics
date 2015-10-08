class AddAttachmentPhotoToAboutus < ActiveRecord::Migration
  def self.up
    change_table :aboutus do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :aboutus, :photo
  end
end
