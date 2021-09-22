class CreateAeromanagerModelsMaintenanceRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :aeromanager_models_maintenance_records do |t|
      t.references :airplane
      t.references :user
      t.string :description
      t.integer :hours_extended

      t.timestamps
    end
  end
end
