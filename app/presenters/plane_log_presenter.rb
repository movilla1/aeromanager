# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class PlaneLogPresenter
  attr_reader :flight_date, :origin_airport, :destination_airport, :flight_duration, :pilot, :instructor, :license,
    :take_off_hour, :landing_hour, :flight_type, :odo_start, :odo_end

  # create object and calculate needed parts
  def initialize(data_row)
    @flight_date = data_row.flight_start.strftime("%d/%m/%Y")
    @origin_airport = data_row.origin_airport
    @destination_airport = data_row.destination_airport
    @flight_duration = ::Services::Normalizer.normalized_hours(data_row.flight_start, data_row.flight_end)
    @pilot = data_row.user&.name
    @instructor = data_row.instructor&.name
    @license = data_row.license
    @take_off_hour = data_row.flight_start.to_formatted_s(:time)
    @landing_hour = data_row.flight_end.to_formatted_s(:time)
    @flight_type = data_row.flight_type
    @odo_start = data_row.odo_start
    @odo_end = data_row.odo_end
  end

  # return hash with the values on this presenter
  def to_hash
    {
      flight_date: flight_date,
      origin_airport: origin_airport,
      destination_airport: destination_airport,
      flight_duration: flight_duration,
      pilot: pilot,
      instructor: instructor,
      license: license,
      take_off_hour: take_off_hour,
      landing_hour: landing_hour,
      flight_type: flight_type,
      odo_start: odo_start,
      odo_end: odo_end
    }
  end
end
