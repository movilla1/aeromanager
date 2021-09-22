# == Schema Information
#
# Table name: aeromanager_models_invoice_rows
#
#  id          :bigint           not null, primary key
#  amount      :float
#  description :string
#  quantity    :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  invoice_id  :bigint
#
# Indexes
#
#  index_aeromanager_models_invoice_rows_on_invoice_id  (invoice_id)
#
class InvoiceRow < ApplicationRecord
  belongs_to :invoice
end
