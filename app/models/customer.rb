class Customer < ApplicationRecord
	validates :first_name, :last_name, :email, :address, :city, :country, :province, :postal_code, presence:true
end
