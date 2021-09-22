# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
# == Schema Information
#
# Table name: aeromanager_models_flight_logs
#
#  id                  :bigint           not null, primary key
#  destination_airport :string
#  flight_end          :datetime         not null
#  flight_start        :datetime         not null
#  flight_type         :integer
#  normalized_duration :float
#  odo_end             :integer
#  odo_start           :integer
#  origin_airport      :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  airplane_id         :bigint
#  instructor_id       :integer
#  user_id             :bigint
#
# Indexes
#
#  index_aeromanager_models_flight_logs_on_airplane_id  (airplane_id)
#  index_aeromanager_models_flight_logs_on_user_id      (user_id)
#
module AeromanagerModels
  class FlightLog < ApplicationRecord
    enum flight_type: %i[TAXI LA TA VP ENT INST I PA IP ADAP READ RP SAN ACR EXA FOT FOR VO LP]
    belongs_to :airplane, class_name: "AeromanagerModels::Airplane"
    belongs_to :user, class_name: "AeromanagerModels::User"
    belongs_to :instructor, class_name: "AeromanagerModels::User", foreign_key: :instructor_id

    validates :flight_start, presence: true
    validates :flight_end, presence: true
    validate :flight_start_before_end_and_reasonable

    MAX_FLIGHT_DURATION = 1.month
    MIN_FLIGHT_DURATION = 5.minutes

    scope :for_user, ->(user) { where(user: user) }

    private

    def flight_start_before_end_and_reasonable
      flight_duration = flight_start - flight_end
      if flight_duration.positive?
        @errors.add( :flight_start, message: ::I18n.t("models.flight_log.errors.start_must_be_before_end") )
      end
      if flight_duration > ::AeromanagerModels::FlightLog::MAX_FLIGHT_DURATION
        @errors.add( :flight_start, message: ::I18n.t("models.flight_log.errors.too_long") )
      end
      if flight_duration < ::AeromanagerModels::FlightLog::MIN_FLIGHT_DURATION
        @errors.add(:flight_end, message: ::I18n.t("models.flight_log.errors.too_short"))
      end
    end
  end
end
