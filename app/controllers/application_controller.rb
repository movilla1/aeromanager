# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class ApplicationController < ::ActionController::Base
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
  include ::Pundit

  before_action :configure_permitted_parameters, if: :devise_controller?

  # returns true only for admin roles
  def admin_only!
    user_signed_in? && (current_user.admin? || current_user.superadmin?)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
