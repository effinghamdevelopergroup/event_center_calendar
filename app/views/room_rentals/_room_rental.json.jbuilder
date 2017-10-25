json.extract! room_rental, :id, :user_id, :room_id, :date, :start_time, :end_time, :note, :paid_amount, :created_at, :updated_at
json.url room_rental_url(room_rental, format: :json)
