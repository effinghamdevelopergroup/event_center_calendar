require 'rails_helper'

RSpec.describe "room_rentals/edit", type: :view do
  before(:each) do
    @room_rental = assign(:room_rental, RoomRental.create!(
      :user_id => 1,
      :room_id => 1,
      :note => "MyText",
      :paid_amount => "9.99"
    ))
  end

  it "renders the edit room_rental form" do
    render

    assert_select "form[action=?][method=?]", room_rental_path(@room_rental), "post" do

      assert_select "input[name=?]", "room_rental[user_id]"

      assert_select "input[name=?]", "room_rental[room_id]"

      assert_select "textarea[name=?]", "room_rental[note]"

      assert_select "input[name=?]", "room_rental[paid_amount]"
    end
  end
end
