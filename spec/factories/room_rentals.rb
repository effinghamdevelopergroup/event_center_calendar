FactoryGirl.define do
  factory :room_rental do
    association :room, factory: :room
    association :user, factory: :user
    rented_date '2017-12-25'
    start_time  '13:00'
    end_time    '20:00'
    notes       'Party!'
  end
end
