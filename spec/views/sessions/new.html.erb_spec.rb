# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
require 'rails_helper'

::RSpec.describe("sessions/new", type: :view) do
  it "renders new session form" do
    render
    p response
    assert_select "form[action=?][method=?]", login_path, "post" do
      assert_select "input[name=?]", "email"
      assert_select "input[name=?]", "password"
      assert_select "input[name=?]", "submit"
    end
  end
end
