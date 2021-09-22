# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware

class CreateAeromanagerModelsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table(:aeromanager_models_users) do |t|
      t.string(:name)
      t.string(:email)
      t.string(:password_digest)
      t.integer(:role)
      t.boolean(:active)
      t.boolean(:confirmed)

      t.timestamps
    end
  end
end
