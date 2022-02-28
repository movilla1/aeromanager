# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::ActiveAdmin.register(::FlightLog) do
  permit_params :airplane_id, :user_id, :flight_start, :flight_end, :normalized_duration,
    :flight_type, :instructor_id, :origin_airport, :destination_airport, :odo_start, :odo_end,
    :notes, :passenger_count
end
