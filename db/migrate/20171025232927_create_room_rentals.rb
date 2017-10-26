class CreateRoomRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :room_rentals do |t|
      t.integer :room_id, null: false
      t.integer :user_id, null: false
      t.date :rented_date, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.boolean :all_day, null: false, default: false
      t.boolean :approved,  null: false, default: false
      t.decimal :amount_paid, precision: 5, scale: 2, null: false, default: 0.00
      t.text :notes, null: false
      t.timestamps
      t.foreign_key :rooms
      t.foreign_key :users
    end
  end
end
