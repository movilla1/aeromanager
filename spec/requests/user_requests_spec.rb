# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
require 'rails_helper'

describe "User management", type: :request do
  let(:original_date) { "2021-01-01" }
  let!(:user) do
    ::AeromanagerModels::User.create(
      name: "test1",
      password: "testing123",
      email: "test@example.com",
      created_at: original_date
    )
  end

  context "changes user name" do
    let(:headers) do
      {
        Authorization: "Bearer #{::SpecSessionHelper.get_token(user.id)}",
        ACCEPT: 'application/json'
      }
    end

    before do
      ::ENV['SECURE_TOKEN_PASS'] = 'passcodesecureisit?'
      post '/user', params: { name: 'testores' }, headers: headers
    end

    it "gets status :ok" do
      expect(response.status).to(eq(200))
      expect(::JSON.parse(response.body)['message']).to(eq("Successfully updated user"))
      expect(user.reload.updated_at).not_to(eq(original_date))
    end
  end

  context "updates password" do
    let(:headers) do
      {
        Authorization: "Bearer #{::SpecSessionHelper.get_token(user.id)}",
        ACCEPT: 'application/json'
      }
    end
    subject(:subject) { post "/user/changepass", headers: headers, params: @params }

    it "succeeds update" do
      @params = { cp: 'testing123', np: 'newpasswd', npc: 'newpasswd' }
      subject
      expect(response.status).to(eq(200))
      expect(::JSON.parse(response.body)['message']).to(eq("Successfully updated user password"))
      expect(user.reload.updated_at).not_to(eq(original_date))
    end

    it "fails to update password with mismatch" do
      @params = { cp: 'testing123', np: 'tester123', npc: 'tester1234'}
      subject
      expect(response.status).to(eq(501))
    end

    it "fails to update password by failed auth" do
      @params = { cp: 'testing12355', np: 'tester1234', npc: 'tester1234'}
      subject
      expect(response.status).to(eq(500))
    end

    context "with invalid token" do
      let (:headers) {
        { Authorization: "Bearer fefefefeasuidjasdhasghhkjdgayugwe" } # the text is garbage
      }
      it "answers not authorized" do
        @params = { cp: 'testing123', np: 'newpasswd', npc: 'newpasswd' }
        subject
        expect(response.body).to(include("not authorized "))
      end
    end

    context "with no token" do
      let (:headers) { {} }
      it "Answers invalid token" do
        @params = { cp: 'testing123', np: 'newpasswd', npc: 'newpasswd' }
        subject
        expect(response.body).to(include("not authorized"))
      end
    end
  end
end
