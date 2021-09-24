# == Schema Information
#
# Table name: maintenance_records
#
#  id             :bigint           not null, primary key
#  description    :string
#  hours_extended :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  airplane_id    :bigint
#  user_id        :bigint
#
# Indexes
#
#  index_maintenance_records_on_airplane_id  (airplane_id)
#  index_maintenance_records_on_user_id      (user_id)
#
class MaintenanceRecord < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :airplane
end
