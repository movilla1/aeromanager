# == Schema Information
#
# Table name: aeromanager_models_maintenance_records
#
#  id             :bigint           not null, primary key
#  description    :string
#  hours_extended :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  aeroplane_id   :integer
#  user_id        :integer
#
class MaintenanceRecord < ApplicationRecord
  belongs_to :user, class_name: "AeromanagerModels::User"
  belongs_to :airplane
end
