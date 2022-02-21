# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class AddUniqueToFlightLogData < ActiveRecord::Migration[6.1]
  def change
    add_index(:flight_logs, %i[airplane_id flight_start], unique: true)
  end
end
