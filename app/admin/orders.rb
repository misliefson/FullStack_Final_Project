ActiveAdmin.register Order do

permit_params :amount, :gst, :pst, :hst

end
