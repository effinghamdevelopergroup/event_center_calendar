class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :capacity
      t.decimal :rate
      t.decimal :discount
      t.text :note

      t.timestamps
    end
  end
end
