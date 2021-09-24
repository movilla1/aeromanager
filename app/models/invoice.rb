# == Schema Information
#
# Table name: invoices
#
#  id          :bigint           not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  creator_id  :integer
#  user_id     :bigint
#
# Indexes
#
#  index_invoices_on_user_id  (user_id)
#
class Invoice < ApplicationRecord
  belongs_to :user, class_name: "User"
end
