require 'rails_helper'

RSpec.describe "rooms/edit", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :name => "MyString",
      :capacity => 1,
      :rate => "9.99",
      :discount => "9.99",
      :note => "MyText"
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input[name=?]", "room[name]"

      assert_select "input[name=?]", "room[capacity]"

      assert_select "input[name=?]", "room[rate]"

      assert_select "input[name=?]", "room[discount]"

      assert_select "textarea[name=?]", "room[note]"
    end
  end
end
