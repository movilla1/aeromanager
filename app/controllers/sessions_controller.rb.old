# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class SessionsController < ApplicationController
  # GET /sessions/1 or /sessions/1.json
  def show; end

  # GET /sessions/new
  def new; end

  # POST /sessions or /sessions.json
  def create
    user = ::User.find_by_email(params[:email])
    if (user&.admin? || user&.superadmin?) && user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(admin_root_path, notice: "Logged in!")
    else
      flash.now[:alert] = "Email or password is invalid"
      render("new")
    end
  end

  # DELETE /sessions/1 or /sessions/1.json
  def destroy
    reset_session
    redirect_to(root_url, notice: "Logged out!")
  end
end
