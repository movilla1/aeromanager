# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class AddColumnsToFlightLogs < ::ActiveRecord::Migration[6.1]
  def change
    add_column(:flight_logs, :flight_type, :integer, index: true)
    add_column(:flight_logs, :instructor_id, :integer)
    add_column(:flight_logs, :origin_airport, :string)
    add_column(:flight_logs, :destination_airport, :string)
    add_column(:flight_logs, :odo_start, :integer)
    add_column(:flight_logs, :odo_end, :integer)
  end
end
