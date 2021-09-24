# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  active          :boolean
#  confirmed       :boolean
#  email           :string
#  license         :string
#  license_type    :integer
#  name            :string
#  password_digest :string
#  role            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  enum role: %i[superadmin admin manager user]
  enum license_type: %i[ppa pma instructor]
  has_secure_password

  has_many :flight_logs, class_name: "FlightLog"
  has_many :club_members, class_name: "ClubMember"
  has_many :aeroclubs, through: :club_members

  validates :license, presence: true, length: { minimum: 4 }

  scope :active, -> { where(active: true) }
end
