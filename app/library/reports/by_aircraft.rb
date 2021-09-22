# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
module Reports
  # Creates report data by aircraft within a given date range
  class ByAircraft
    attr_reader :data_processed

    # Initializes the object with the data
    def initialize(date_start, date_end)
      @data_processed = {}
      data = ::AeromanagerModels::FlightLog.includes(:user, :airplane)
        .select(:airplane_id, :user_id, :flight_start, :flight_end)
        .where("flight_start <= ? AND flight_end <= ?", date_start, date_end)
        .order(user_id: :asc)
      hours = {}
      data.each do |row|
        normalized_hours = ::AeromanagerModels::Services::Normalizer.new
          .normalized_hours(row.flight_start, row.flight_end)
        if @data_processed[row.airplane.identifier].present?
          hours[row.user_id] += normalized_hours
        else
          hours[row.user_id] = normalized_hours
        end
        if @data_processed[row.airplane.identifier].present?
          @data_processed[row.airplane.identifier][row.user.name] = hours[row.user_id]
        else
          @data_processed[row.airplane.identifier] = { row.user.name => hours[row.user_id] }
        end
      end
    end
  end
end
