class Manga < ApplicationRecord

	belongs_to :category

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


	validates :title, :author,:description, presence:true
	validates :stock_quantity, :inclusion => {:in => 0..100}

	def self.search(search)
		where("title LIKE ? ", "%#{search}%")
	end
end
