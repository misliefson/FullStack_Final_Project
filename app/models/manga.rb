class Manga < ApplicationRecord

	belogs_to :category

	validates :title, :author,:description, presence:true
	validates :stock_quantity, :inclusion => {:in => 0..100}

	def self.search(search)
		where("title LIKE ? ", "%#{search}%")
	end
end
