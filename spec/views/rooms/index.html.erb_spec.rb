require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :name => "Name",
        :capacity => 2,
        :rate => "9.99",
        :discount => "9.99",
        :note => "MyText"
      ),
      Room.create!(
        :name => "Name",
        :capacity => 2,
        :rate => "9.99",
        :discount => "9.99",
        :note => "MyText"
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
