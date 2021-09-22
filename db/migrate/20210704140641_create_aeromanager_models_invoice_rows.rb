# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class CreateAeromanagerModelsInvoiceRows < ::ActiveRecord::Migration[5.2]
  def change
    create_table(:invoice_rows) do |t|
      t.references(:invoice)
      t.string(:description)
      t.float(:quantity)
      t.float(:amount)

      t.timestamps
    end
  end
end
