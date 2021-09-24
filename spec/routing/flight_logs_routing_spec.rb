# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
require "rails_helper"

::RSpec.describe(::Api::V1::FlightLogsController, type: :routing) do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/flight_logs").to(route_to("api/v1/flight_logs#index"))
    end

    it "routes to #show" do
      expect(get: "/api/v1/flight_logs/1").to(route_to("api/v1/flight_logs#show", id: "1"))
    end

    it "routes to #create" do
      expect(post: "/api/v1/flight_logs").to(route_to("api/v1/flight_logs#create"))
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/flight_logs/1").to(route_to("api/v1/flight_logs#update", id: "1"))
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/v1/flight_logs/1").to(route_to("api/v1/flight_logs#update", id: "1"))
    end

    it "routes to #destroy" do
      expect(delete: "/api/v1/flight_logs/1").to(route_to("api/v1/flight_logs#destroy", id: "1"))
    end
  end
end
