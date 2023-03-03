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

::RSpec.describe(::FlightLog, type: :model) do
  let(:flight_log) { build(:flight_log) }

  it "won't add duplicate records" do
    flight_log.flight_start = ::Time.current - 1.hour
    flight_log.flight_end = ::Time.current
    flight_log.save
    new_log = ::FlightLog.new(flight_log.attributes)
    expect(new_log.valid?).to(eq(false))
  end

  it "won't let a flight in the same time range as a previous one" do
    flight_log.flight_start = ::Time.current - 4.hours
    flight_log.flight_end = ::Time.current - 2.hours
    flight_log.save
    new_log = build(:flight_log, flight_start: ::Time.current - 3.hours)
    expect(new_log.valid?).to(eq(false))
  end
end
