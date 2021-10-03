# == Schema Information
#
# Table name: aeroclubs
#
#  id         :bigint           not null, primary key
#  address    :string
#  facebook   :string
#  lat        :string
#  long       :string
#  name       :string
#  phone      :string
#  web        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe(Aeroclub, type: :model) do
  pending "add some examples to (or delete) #{__FILE__}"
end
