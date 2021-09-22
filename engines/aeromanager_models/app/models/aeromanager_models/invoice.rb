# == Schema Information
#
# Table name: aeromanager_models_invoices
#
#  id          :bigint           not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  creator_id  :integer
#  user_id     :integer
#
module AeromanagerModels
  class Invoice < ApplicationRecord
    belongs_to :user, class_name: "AeromanagerModels::User"
  end
end
