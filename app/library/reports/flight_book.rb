# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
module Reports
  # This class will output a log by date to give an output of an airfield flight book sheet
  class FlightBook
    # Creates the flightbook report
    def initialize(date_start, date_end, club_id)
      @start_date = date_start
      @end_date = date_end
      @club_id = club_id
    end

    # executes the report data gathering.
    def call
      p self
      query = ::FlightLog.joins(:user, :airplane)
      query = query.where("flight_start >= ?", "#{@start_date} 00:00:00") if @start_date.present?
      query = query.where("flight_end <= ?", "#{@end_date} 23:59:59") if @end_date.present?
      query = query.joins(user: [:club_members]).where("club_members.aeroclub_id": @club_id)
      results = []
      query.find_each do |flight_row|
        results << ::FlightBookPresenter.new(flight_row).to_hash
      end
      results
    end
  end
end
