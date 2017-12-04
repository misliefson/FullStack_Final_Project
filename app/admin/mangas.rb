ActiveAdmin.register Manga do

permit_params :title, :author, :description, :stock_quantity, :category_id, :image, image_attributes: [:_destroy]


form do |f|
	f.semantic_errors
	f.inputs do 
		f.input :title
		f.input :author
		f.input :description
		f.input :stock_quantity
		f.input :category_id
		f.input :image, as: :file
		if f.object.image.present?
			f.semantic_fields_for :image_attributes do |image_fields|
				image_fields.input :_destroy, as: :boolean, label: 'Delete'
			end
		end
	end
	f.actions
end
end
