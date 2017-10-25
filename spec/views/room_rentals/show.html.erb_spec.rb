require 'rails_helper'

RSpec.describe "room_rentals/show", type: :view do
  before(:each) do
    @room_rental = assign(:room_rental, RoomRental.create!(
      :user_id => 2,
      :room_id => 3,
      :note => "MyText",
      :paid_amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
  end
end
