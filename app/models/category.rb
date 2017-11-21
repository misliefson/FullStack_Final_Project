class Category < ApplicationRecord
	has_many :mangas

	validates :name, presence:true

	def self.search(search)
		where("name LIKE ?","%#{search}%")
	end
end
