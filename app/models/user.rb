# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  active                 :boolean
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed              :boolean
#  confirmed_at           :datetime
#  email                  :string
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  license                :string
#  license_type           :integer
#  locked_at              :datetime
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer
#  unconfirmed_email      :string
#  unlock_token           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :validatable, :lockable, :confirmable
  enum role: %i[superadmin admin manager user]
  enum license_type: %i[ppa pma instructor]

  has_many :flight_logs, class_name: "FlightLog"
  has_many :club_members, class_name: "ClubMember"
  has_many :aeroclubs, through: :club_members

  validates :license, presence: true, length: { minimum: 4 }

  scope :active, -> { where(active: true) }
end
