
# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
module Api
  module V1
    class ApiBaseController < ::ActionController::API
      before_action :authenticate_request
      attr_reader :current_user

      private

      def authenticate_request
        @current_user = ::AuthorizeApiRequest.call(request.headers).result

        render(json: { error: ::I18n.t('auth.unauthorized') }, status: 401) if current_user.blank?
      end
    end
  end
end
