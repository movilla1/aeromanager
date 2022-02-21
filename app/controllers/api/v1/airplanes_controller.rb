# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
# Controller to list airplanes to front end
module Api
  module V1
    class AirplanesController < ApiBaseController
      # Index takes the current user and shows the planes available for usage
      def index
        planes =
          if current_user.superadmin?
            ::Airplane.all
          else
            ::Airplane
              .joins(aeroclub: { club_member: :user })
              .where( club_members: { user_id: current_user.id } )
          end
        hash = ::AirplanesListSerializer.new(planes).serializable_hash
        render(json: hash)
      end
    end
  end
end
