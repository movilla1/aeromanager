# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware

class CreateAeromanagerModelsFlightLogs < ActiveRecord::Migration[5.2]
  def change
    create_table(:flight_logs) do |t|
      t.references(:airplane)
      t.references(:user)
      t.timestamp(:flight_start, null: false)
      t.timestamp(:flight_end, null: false)
      t.float(:normalized_duration)

      t.timestamps
    end
  end
end
