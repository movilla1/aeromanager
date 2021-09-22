# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class CreateAeromanagerModelsPrices < ::ActiveRecord::Migration[5.2]
  def change
    create_table(:prices) do |t|
      t.float(:amount)
      t.string(:name)
      t.boolean(:active, default: true)
      t.timestamp(:date_deactivated)

      t.timestamps
    end
  end
end
