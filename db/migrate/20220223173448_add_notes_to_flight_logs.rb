# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class AddNotesToFlightLogs < ActiveRecord::Migration[6.1]
  def change
    add_column(:flight_logs, :notes, :string)
  end
end
