# == Schema Information
#
# Table name: flight_logs
#
#  id                  :bigint           not null, primary key
#  destination_airport :string
#  flight_end          :datetime         not null
#  flight_start        :datetime         not null
#  flight_type         :integer
#  normalized_duration :float
#  notes               :string
#  odo_end             :integer
#  odo_start           :integer
#  origin_airport      :string
#  passenger_count     :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  airplane_id         :bigint
#  instructor_id       :integer
#  user_id             :bigint
#
# Indexes
#
#  index_flight_logs_on_airplane_id                   (airplane_id)
#  index_flight_logs_on_airplane_id_and_flight_start  (airplane_id,flight_start) UNIQUE
#  index_flight_logs_on_user_id                       (user_id)
#
require 'rails_helper'

RSpec.describe(FlightLog, type: :model) do
  pending "add some examples to (or delete) #{__FILE__}"
end
