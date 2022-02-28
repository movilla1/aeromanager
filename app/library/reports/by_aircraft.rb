# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
module Reports
  # Creates report data by aircraft within a given date range
  class ByAircraft
    # Initializes the object with the data
    def initialize(date_start, date_end, airplane_id)
      @date_start = date_start
      @date_end = date_end
      @airplane_id = airplane_id
    end

    # Executes the report and returns result array
    def execute
      data = ::FlightLog.includes(:user, :airplane)
        .where("flight_start >= ? AND flight_end <= ?", @date_start, @date_end)
        .where(airplane_id: @airplane_id)
        .order(user_id: :asc)
      last_maintenance = ::MaintenanceRecord.where(airplane_id: @airplane_id).order(created_at).last
      remaining_hours = last_maintenance.hours_extended
      ::FlightLog.where("flight_start >= ?", last_maintenance.created_at)
        .where("flight_end <= ?", @date_start).each do |f_log|
          remaining_hours -= ::Services::Normalizer.normalized_hours(f_log.flight_start, f_log.flight_end)
        end
      result = []
      data.each do |row|
        remaining_hours -= ::Services::Normalizer.normalized_hours(row.flight_start, row.flight_end)
        result << ::PlaneLogPresenter.new(row, remaining_hours).to_hash
      end
      { result: result, last_maintenance: last_maintenance.hours_extended }
    end
  end
end
