require "rails_helper"

RSpec.describe RoomRentalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/room_rentals").to route_to("room_rentals#index")
    end

    it "routes to #new" do
      expect(:get => "/room_rentals/new").to route_to("room_rentals#new")
    end

    it "routes to #show" do
      expect(:get => "/room_rentals/1").to route_to("room_rentals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/room_rentals/1/edit").to route_to("room_rentals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/room_rentals").to route_to("room_rentals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/room_rentals/1").to route_to("room_rentals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/room_rentals/1").to route_to("room_rentals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/room_rentals/1").to route_to("room_rentals#destroy", :id => "1")
    end

  end
end
