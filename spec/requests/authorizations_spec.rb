# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
require 'rails_helper'

describe "Authorization management", type: :request do
  let!(:user) do
    ::AeromanagerModels::User.create(
      name: "test1",
      password: "testing123",
      email: "test@example.com",
      role: :admin
    )
  end

  it "authenticates" do
    headers = { ACCEPT: "application/json" }
    post '/authenticate', as: :json, params: { username: 'test@example.com', password: 'testing123' }, headers: headers
    expect(response.code).to(eq("200"))
    expect(::JSON.parse(response.body, symbolize_names: true)).to(
      eq(
        {
          token: ::SpecSessionHelper.get_token(user.id),
          user: {
            created_at: user.created_at.iso8601,
            email: "test@example.com",
            id: user.id,
            name: "test1",
            role: "admin"
          }
        }
      )
    )
  end

  it "Fails to authenticate" do
    headers = { ACCEPT: "application/json" }
    post '/authenticate', as: :json, params: { username: 'test@example.com', password: 'failpass' }, headers: headers
    expect(response.code).to(eq("401"))
  end
end
