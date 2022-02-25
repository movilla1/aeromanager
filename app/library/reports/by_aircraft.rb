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

    def execute
      data = ::FlightLog.includes(:user, :airplane)
        .where("flight_start <= ? AND flight_end <= ?", @date_start, @date_end)
        .where(airplane_id: @airplane_id)
        .order(user_id: :asc)
      result = []
      data.each do |row|
        result << PlaneLogPresenter.new(row).to_hash
      end
      result
    end
  end
end
