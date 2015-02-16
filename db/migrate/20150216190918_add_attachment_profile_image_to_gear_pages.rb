class AddAttachmentProfileImageToGearPages < ActiveRecord::Migration
  def self.up
    change_table :gear_pages do |t|
      t.attachment :profile_image
    end
  end

  def self.down
    remove_attachment :gear_pages, :profile_image
  end
end
