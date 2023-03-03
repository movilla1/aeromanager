# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
# == Schema Information
#
# Table name: flight_logs
#
#  id                  :bigint           not null, primary key
#  destination_airport :string
#  flight_end          :datetime         not null
#  flight_start        :datetime         not null
#  flight_type         :integer
#  normalized_duration :float
#  notes               :string
#  odo_end             :integer
#  odo_start           :integer
#  origin_airport      :string
#  passenger_count     :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  airplane_id         :bigint
#  instructor_id       :integer
#  user_id             :bigint
#
# Indexes
#
#  index_flight_logs_on_airplane_id                   (airplane_id)
#  index_flight_logs_on_airplane_id_and_flight_start  (airplane_id,flight_start) UNIQUE
#  index_flight_logs_on_user_id                       (user_id)
#
class FlightLog < ApplicationRecord
  enum flight_type: %i[TAXI LA TA VP ENT INST I PA IP ADAP READ RP SAN ACR EXA FOT FOR VO LP]
  belongs_to :airplane
  belongs_to :user
  belongs_to :instructor, class_name: "User", foreign_key: :instructor_id, optional: true

  validates :flight_start, presence: true
  validates :flight_end, presence: true
  validates :airplane_id, uniqueness: { scope: :flight_start }
  validate :flight_start_before_end_and_reasonable
  validate :instructor_required_according_to_type
  validate :flight_not_within_other_flight

  after_validation :upcase_airports

  MAX_FLIGHT_DURATION = 1.month
  MIN_FLIGHT_DURATION = 5.minutes

  scope :for_user, ->(user) { where(user: user) }

  private

  def flight_start_before_end_and_reasonable
    flight_duration = flight_end - flight_start
    if flight_duration.negative?
      @errors.add( :flight_start, message: ::I18n.t("models.flight_log.errors.start_must_be_before_end") )
    elsif flight_duration > ::FlightLog::MAX_FLIGHT_DURATION
      @errors.add( :flight_start, message: ::I18n.t("models.flight_log.errors.too_long") )
    elsif flight_duration < ::FlightLog::MIN_FLIGHT_DURATION
      @errors.add(:flight_end, message: ::I18n.t("models.flight_log.errors.too_short"))
    else
      true
    end
  end

  def instructor_required_according_to_type
    return true unless %i[INST ADAP].include?(flight_type)

    instructor_id.present? && ::User.exists?(id: instructor_id)
  end

  def upcase_airports
    self.origin_airport = origin_airport.to_s.upcase
    self.destination_airport = destination_airport.to_s.upcase
  end

  def flight_not_within_other_flight
    last_flight_for_airplane = where(airplane_id: airplane_id).order(flight_end: :desc).first
    last_flight_for_airplane.flight_end < flight_start
  end
end
