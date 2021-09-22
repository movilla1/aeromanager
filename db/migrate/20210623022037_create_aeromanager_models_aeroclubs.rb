# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware

class CreateAeromanagerModelsAeroclubs < ActiveRecord::Migration[5.2]
  def change
    create_table(:aeroclubs) do |t|
      t.string(:name)
      t.string(:address)
      t.string(:phone)
      t.string(:web)
      t.string(:facebook)
      t.string(:lat)
      t.string(:long)

      t.timestamps
    end
  end
end
