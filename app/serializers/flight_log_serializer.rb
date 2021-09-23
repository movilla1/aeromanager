# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
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
    ::AeromanagerModels::Services::Normalizer.normalized_hours(obj.flight_start, obj.flight_end)
  end

  attribute :instructor do |obj|
    obj.instructor&.name
  end
end
