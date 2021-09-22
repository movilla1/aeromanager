# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class CreateAeromanagerModelsConsumables < ::ActiveRecord::Migration[5.2]
  def change
    create_table(:consumables) do |t|
      t.references(:user)
      t.integer(:created_by_id)
      t.integer(:updated_by_id)
      t.string(:description)
      t.float(:quantity)
      t.float(:price)

      t.timestamps
    end
  end
end
