# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
# == Schema Information
#
# Table name: aeromanager_models_club_members
#
#  id          :bigint           not null, primary key
#  active      :boolean          default(TRUE)
#  banned      :boolean          default(FALSE)
#  end_date    :datetime
#  instructor  :boolean
#  start_date  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  aeroclub_id :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_aeromanager_models_club_members_on_aeroclub_id  (aeroclub_id)
#  index_aeromanager_models_club_members_on_user_id      (user_id)
#

class ClubMember < ApplicationRecord
  belongs_to :aeroclub, class_name: "AeromanagerModels::Aeroclub"
  belongs_to :user, class_name: "AeromanagerModels::User"
end
