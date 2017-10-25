class CreateRoomRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :room_rentals do |t|
      t.integer :user_id
      t.integer :room_id
      t.datetime :date
      t.time :start_time
      t.time :end_time
      t.text :note
      t.decimal :paid_amount

      t.timestamps
    end
  end
end
