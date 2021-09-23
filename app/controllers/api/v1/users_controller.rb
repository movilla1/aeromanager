# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
module Api
  module V1
    class UsersController < ApplicationController
      before_action :find_user, except: [:instructors]

      # GET /users/instructors, lists all instructors available for a club
      def instructors
        data = ::User.instructor.all
        data_hash = ::InstructorUsersSerializer.new(data).serializable_hash
        render(json: data_hash)
      end

      # POST /user/:id, updates user name
      def update
        if @user&.update(name: params[:name])
          render(json: { status: :ok, message: ::I18n.t("user.update.success") })
        else
          render(json: { status: 500, message: ::I18n.t("user.update.failed") })
        end
      end

      # POST /user/:id/change_pass, changes password details
      def update_password
        unless @user&.authenticate(params[:cp])
          render(json: { status: 500, message: ::I18n.t("user.update.bad_pass") }, status: 500)
          return
        end
        unless params[:np] == params[:npc]
          render(json: { status: 500, message: ::I18n.t("user.update.passwords_mismatch") }, status: 501)
          return
        end

        if @user.update(password: params[:np])
          render(json: { status: :ok, message: ::I18n.t("user.update.password_ok") })
        else
          render(json: { status: :ok, message: ::I18n.t("user.update.password_failed") })
        end
      end

      private

      def find_user
        @user = current_user if current_user.present?
      end
    end
  end
end
