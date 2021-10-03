# == Schema Information
#
# Table name: airplanes
#
#  id             :bigint           not null, primary key
#  designation    :string
#  make           :string
#  model          :string
#  purchased_date :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  aeroclub_id    :bigint
#
# Indexes
#
#  index_airplanes_on_aeroclub_id  (aeroclub_id)
#
require 'rails_helper'

RSpec.describe(Airplane, type: :model) do
  pending "add some examples to (or delete) #{__FILE__}"
end
