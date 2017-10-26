# Rooms that can be rented.
class Room < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :capacity, presence: true, numericality: { greater_than: 1 }
  validates :rate, presence: true, numericality: { greater_than: 0.00 }
  validates :notes, presence: true
end
