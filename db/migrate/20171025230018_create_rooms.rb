class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name, null: false, unique: true
      t.integer :capacity, null: false, default: 0
      t.decimal :rate, precision: 5, scale: 2, null: false, default: 0.00
      t.decimal :discount, precision: 4, scale: 2, null: false, default: 0.00
      t.text :notes, null: false, default: ''
      t.boolean :active, null: false, default: false
      t.timestamps
    end
  end
end
