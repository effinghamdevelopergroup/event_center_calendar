require 'rails_helper'

RSpec.describe "room_rentals/new", type: :view do
  before(:each) do
    assign(:room_rental, RoomRental.new(
      :user_id => 1,
      :room_id => 1,
      :note => "MyText",
      :paid_amount => "9.99"
    ))
  end

  it "renders new room_rental form" do
    render

    assert_select "form[action=?][method=?]", room_rentals_path, "post" do

      assert_select "input[name=?]", "room_rental[user_id]"

      assert_select "input[name=?]", "room_rental[room_id]"

      assert_select "textarea[name=?]", "room_rental[note]"

      assert_select "input[name=?]", "room_rental[paid_amount]"
    end
  end
end
