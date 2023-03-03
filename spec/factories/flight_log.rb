# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::FactoryBot.define do
  factory :flight_log, class: ::FlightLog do
    association :aeroclub, factory: :aeroclub
    association :user, factory: :user
    association :instructor, factory: :user
    flight_start {}
    flight_end {}
    flight_type { "VP" }
    origin_airport { "CED" }
    destination_airport { "RYD" }
    passenger_count { "2" }
    odo_start {}
    odo_end {}
  end
end
