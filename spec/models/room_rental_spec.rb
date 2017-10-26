require 'rails_helper'

RSpec.describe RoomRental, type: :model do
  subject { build(:room_rental) }

  it { should have_db_column :room_id }
  it { should have_db_column :user_id }
  it { should have_db_column :rented_date }
  it { should have_db_column :start_time }
  it { should have_db_column :end_time }
  it { should have_db_column :all_day }
  it { should have_db_column :approved }
  it { should have_db_column :amount_paid }
  it { should have_db_column :notes }

  it { should validate_presence_of :user_id }
  it { should validate_presence_of :room_id }
  it { should validate_presence_of :rented_date }
  it { should validate_presence_of :start_time }
  it { should validate_presence_of :end_time }
  it { should validate_presence_of :notes }

  it { should belong_to :user }
  it { should belong_to :room }
end
