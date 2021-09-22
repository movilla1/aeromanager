class CreateAeromanagerModelsInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :aeromanager_models_invoices do |t|
      t.references :user
      t.integer :creator_id
      t.string :description

      t.timestamps
    end
  end
end
