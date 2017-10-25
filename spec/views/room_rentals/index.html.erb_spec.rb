require 'rails_helper'

RSpec.describe "room_rentals/index", type: :view do
  before(:each) do
    assign(:room_rentals, [
      RoomRental.create!(
        :user_id => 2,
        :room_id => 3,
        :note => "MyText",
        :paid_amount => "9.99"
      ),
      RoomRental.create!(
        :user_id => 2,
        :room_id => 3,
        :note => "MyText",
        :paid_amount => "9.99"
      )
    ])
  end

  it "renders a list of room_rentals" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
