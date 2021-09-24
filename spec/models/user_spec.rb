# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  active          :boolean
#  confirmed       :boolean
#  email           :string
#  license         :string
#  license_type    :integer
#  name            :string
#  password_digest :string
#  role            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
require 'rails_helper'

RSpec.describe(User, type: :model) do
  pending "add some examples to (or delete) #{__FILE__}"
  # waiting for examples.
end
