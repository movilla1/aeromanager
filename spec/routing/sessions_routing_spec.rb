# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
require "rails_helper"

::RSpec.describe(::SessionsController, type: :routing) do
  describe "routing" do
    it "routes to #new" do
      expect(get: "/login").to(route_to("sessions#new"))
    end

    it "routes to #create" do
      expect(post: "/login").to(route_to("sessions#create"))
    end

    it "routes to #destroy" do
      expect(get: "/logout").to(route_to("sessions#destroy"))
    end
  end
end
