class AddAttachmentImageToMangas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :mangas do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :mangas, :image
  end
end
