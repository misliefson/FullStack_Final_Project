class Customer < ApplicationRecord
	has_many :orders
	validates :first_name, :last_name, :email, :address, :city, :country, :province, :postal_code, presence:true
end
