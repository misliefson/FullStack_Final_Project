class Category < ApplicationRecord
	has_many :mangas

	validates :name, presence:true
end
