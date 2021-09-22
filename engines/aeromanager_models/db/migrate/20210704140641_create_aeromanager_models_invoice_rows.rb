class CreateAeromanagerModelsInvoiceRows < ActiveRecord::Migration[5.2]
  def change
    create_table :aeromanager_models_invoice_rows do |t|
      t.references :invoice
      t.string :description
      t.float :quantity
      t.float :amount

      t.timestamps
    end
  end
end
