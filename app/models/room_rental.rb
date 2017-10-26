# rental of a room
class RoomRental < ApplicationRecord
  validates :room_id, presence: true
  validates :user_id, presence: true
  validates :rented_date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :notes, presence: true

  belongs_to :user
  belongs_to :room
end
