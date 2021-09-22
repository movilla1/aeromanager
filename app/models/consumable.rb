# == Schema Information
#
# Table name: aeromanager_models_consumables
#
#  id            :bigint           not null, primary key
#  description   :string
#  price         :float
#  quantity      :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  created_by_id :integer
#  updated_by_id :integer
#  user_id       :bigint
#
# Indexes
#
#  index_aeromanager_models_consumables_on_user_id  (user_id)
#

class Consumable < ApplicationRecord
  belongs_to :user, class_name: "AeromanagerModels::User"
  belongs_to :creator, class_name: "AeromanagerModels::User", foreign_key: 'created_by_id', optional: false
  belongs_to :updater, class_name: "AeromanagerModels::User", foreign_key: 'updated_by_id', optional: false

  before_validation :set_creator_and_updater

  private

  def set_creator_and_updater
    self.created_by_id = current_user.id if created_by_id.blank?
    self.updated_by_id = current_user.id
  end
end
