class Customer < ApplicationRecord
	validates :first_name, :last_name, :email, :address, :city, :country, :province, :postal_code, presence:true
	validates :postal_code, format: { with: [ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ][0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]}
end
