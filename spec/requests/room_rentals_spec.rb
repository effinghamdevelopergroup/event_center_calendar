require 'rails_helper'

RSpec.describe "RoomRentals", type: :request do
  describe "GET /room_rentals" do
    it "works! (now write some real specs)" do
      get room_rentals_path
      expect(response).to have_http_status(200)
    end
  end
end
