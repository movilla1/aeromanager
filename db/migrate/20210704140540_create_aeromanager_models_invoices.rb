# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class CreateAeromanagerModelsInvoices < ::ActiveRecord::Migration[5.2]
  def change
    create_table(:invoices) do |t|
      t.references(:user)
      t.integer(:creator_id)
      t.string(:description)

      t.timestamps
    end
  end
end
