json.extract! item, :id, :owner_id, :category_id, :priority, :status, :due_date, :description, :interactions_count, :created_at, :updated_at
json.url item_url(item, format: :json)
