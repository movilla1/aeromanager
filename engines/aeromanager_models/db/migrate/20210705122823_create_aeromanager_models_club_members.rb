class CreateAeromanagerModelsClubMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :aeromanager_models_club_members do |t|
      t.references :aeroclub
      t.references :user
      t.timestamp :start_date
      t.timestamp :end_date
      t.boolean :active, default: true
      t.boolean :banned, default: false

      t.timestamps
    end
  end
end
