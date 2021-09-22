# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware

class CreateAeromanagerModelsAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table(:aeromanager_models_airplanes) do |t|
      t.string(:make)
      t.string(:model)
      t.date(:purchased_date)
      t.string(:designation)
      t.references(:aeroclub)

      t.timestamps
    end
  end
end
