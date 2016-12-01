class AddAttachmentFileToUploads < ActiveRecord::Migration
  def self.up
    change_table :fotos do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :fotos, :file
  end
end
