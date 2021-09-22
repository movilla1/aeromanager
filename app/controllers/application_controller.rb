# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class ApplicationController < ::ActionController::Base
  include ::Pundit
  helper_method :current_user

  # returns the app current logged in user
  def current_user
    @current_user ||= ::AeromanagerModels::User.find(session[:user_id])
  end

  # Redirect non-admin users out of the admin pages
  def admin_only!
    (redirect_to(root_url, notice: ::I18n.t('only_admin_authorized')) and return ) unless current_user
    return true if current_user&.admin? || current_user&.superadmin?

    redirect_to(root_url, notice: ::I18n.t('only_admin_authorized'))
    false
  end
end
