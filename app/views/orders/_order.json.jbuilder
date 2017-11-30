json.extract! order, :id, :amount, :gst, :pst, :hst, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
