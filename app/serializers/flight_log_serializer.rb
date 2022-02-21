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
class FlightLogSerializer
  include ::FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower

  attributes :user_id, :origin_airport, :destination_airport, :flight_type, :odo_end, :odo_start

  attribute :flight_start do |obj|
    ::I18n.l(obj.flight_start, format: :long)
  end

  attribute :flight_end do |obj|
    ::I18n.l(obj.flight_end, format: :long)
  end

  attribute :airplane do |obj|
    obj.airplane.identifier
  end

  attribute :normalized_duration do |obj|
    ::Services::Normalizer.normalized_hours(obj.flight_start, obj.flight_end)
  end

  attribute :instructor do |obj|
    obj.instructor&.name
  end
end
