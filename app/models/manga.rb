class Manga < ApplicationRecord

	belongs_to :category

	has_attached_file :image, {  validate_media_type: false }
	validates_attachment_content_type :image, content_type: /\Aimage/
  # Validate filename
  validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :image

	validates :title, :author,:description, presence:true
	validates :stock_quantity, :inclusion => {:in => 0..100}

	def self.search(search)
		where("title LIKE ? ", "%#{search}%")
	end
end
