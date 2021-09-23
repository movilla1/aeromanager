require "rails_helper"

RSpec.describe FlightLogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/flight_logs").to route_to("flight_logs#index")
    end

    it "routes to #show" do
      expect(get: "/flight_logs/1").to route_to("flight_logs#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/flight_logs").to route_to("flight_logs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/flight_logs/1").to route_to("flight_logs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/flight_logs/1").to route_to("flight_logs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/flight_logs/1").to route_to("flight_logs#destroy", id: "1")
    end
  end
end
