ActiveAdmin.register Category do

permit_params :first_name, :last_name, :email, :address, :city, :country, :province, :postal_code

end
