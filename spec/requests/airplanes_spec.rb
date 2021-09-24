# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
require 'rails_helper'

::RSpec.describe("Airplanes", type: :request) do
  let(:user) { ::FactoryBot.create(:user) }
  let(:admin_user) { ::FactoryBot.create(:user, :superadmin) }
  let!(:airplane) { ::FactoryBot.create(:airplane) }
  let(:aeroclub) { ::FactoryBot.create(:aeroclub) }
  let!(:airplane2) { ::FactoryBot.create(:airplane, aeroclub: aeroclub) }
  let(:headers) {
    { Authorization: "Bearer #{::SpecSessionHelper.get_token(user.id)}" }
  }
  let(:headers2) {
    { Authorization: "Bearer #{::SpecSessionHelper.get_token(admin_user.id)}" }
  }
  describe "GET /index" do
    before do
      aeroclub1 = airplane.aeroclub
      ::ClubMember.create(user: user, aeroclub: aeroclub1, active: true, banned: false)
      ::ClubMember.create(user: admin_user, aeroclub: aeroclub, active: true, banned: false)
    end
    it "returns http success" do
      get "/api/v1/airplanes", headers: headers
      expect(response).to(have_http_status(:success))
      expect(response.body).not_to(include(airplane2.designation))
    end

    it "returns all planes" do
      get "/api/v1/airplanes", headers: headers2
      expect(response.body).to(include(airplane2.designation))
    end
  end
end
