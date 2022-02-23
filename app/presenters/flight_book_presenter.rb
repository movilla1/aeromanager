# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class FlightBookPresenter
  attr_reader :airplane, :flight_date, :origin_airport, :destination_airport,
    :pilot_license_venc, :take_off_hour, :landing_hour, :notes

  # creates the object and processes data as needed
  def initialize(data_row)
    @airplane = data_row.airplane.identifier
    @flight_date = data_row.flight_start.to_formatted_s(:date_only)
    @origin_airport = data_row.origin_airport
    @destination_airport = data_row.destination_airport
    @pilot_license_venc = [data_row.user&.name, data_row.instructor&.name].compact.join(" - ")
    @take_off_hour = data_row.flight_start.to_formatted_s(:time)
    @landing_hour = data_row.flight_end.to_formatted_s(:time)
    @notes = data_row.notes
  end
end
