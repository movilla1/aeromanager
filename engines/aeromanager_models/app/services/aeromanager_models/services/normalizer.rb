# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
# class to hold all normalizations carried out by the system
module AeromanagerModels
  module Services
    class Normalizer
      # Time normalizer for used aircraft hours
      def self.normalized_hours(start_time, end_time)
        ((end_time - start_time) / 1.hour).round(1)
      end
    end
  end
end
