# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
module Api
  module V1
    class AuthenticationController < ApiBaseController
      skip_before_action :authenticate_request

      # calls the auth routine to get the proper response.
      def authenticate
        command = ::AuthenticateUser.call(params[:username], params[:password])

        if command.success?
          render(json: command.result)
        else
          render(json: { error: command.errors }, status: :unauthorized)
        end
      end
    end
  end
end
