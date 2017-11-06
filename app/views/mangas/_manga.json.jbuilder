json.extract! manga, :id, :title, :author, :description, :stock_quantity, :created_at, :updated_at
json.url manga_url(manga, format: :json)
