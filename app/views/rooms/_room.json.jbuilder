json.extract! room, :id, :name, :capacity, :rate, :discount, :note, :created_at, :updated_at
json.url room_url(room, format: :json)
