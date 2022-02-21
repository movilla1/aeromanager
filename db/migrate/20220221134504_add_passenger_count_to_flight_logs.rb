# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class AddPassengerCountToFlightLogs < ActiveRecord::Migration[6.1]
  def change
    add_column(:flight_logs, :passenger_count, :integer)
  end
end
