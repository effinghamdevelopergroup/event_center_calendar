require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :name => "MyString",
      :capacity => 1,
      :rate => "9.99",
      :discount => "9.99",
      :note => "MyText"
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input[name=?]", "room[name]"

      assert_select "input[name=?]", "room[capacity]"

      assert_select "input[name=?]", "room[rate]"

      assert_select "input[name=?]", "room[discount]"

      assert_select "textarea[name=?]", "room[note]"
    end
  end
end
