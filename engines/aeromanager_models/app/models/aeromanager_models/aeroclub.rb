# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
# == Schema Information
#
# Table name: aeromanager_models_aeroclubs
#
#  id         :bigint           not null, primary key
#  address    :string
#  facebook   :string
#  lat        :string
#  long       :string
#  name       :string
#  phone      :string
#  web        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

module AeromanagerModels
  class Aeroclub < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3 }
    validates :phone,
              presence: true,
              length: { minimum: 6, maximum: 20 },
              format: { with: /\+{0,1}(\d+-{0,1}\d+)+/, message: 'Only + - and numbers are allowed' }
    has_many :club_member, class_name: "AeromanagerModels::ClubMember"
    has_many :members, through: :club_member, source: :aeroclub
  end
end
