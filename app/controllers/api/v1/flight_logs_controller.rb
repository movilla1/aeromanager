# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
module Api
  module V1
    class FlightLogsController < ApiBaseController
      before_action :set_flight_log, only: %i[show update destroy]

      # Initializer to hold instance var.
      def initialize
        super
        @errors = []
      end

      # GET /flight_logs
      def index
        @flight_logs =
          if current_user.superadmin?
            ::FlightLog.includes(:user, :airplane).all
          else
            ::FlightLog.includes(:user, :airplane).for_user(current_user)
          end
        hash = ::FlightLogsSerializer.new(@flight_logs).serializable_hash
        render(json: hash)
      end

      # GET /flight_logs/1
      def show
        unless @errors.length.positive?
          hash = ::FlightLogSerializer.new(@flight_log).serializable_hash
          render(json: hash)
          return
        end

        render(json: @errors)
      end

      # POST /flight_logs
      def create
        @flight_log = ::FlightLog.new(flight_log_params)
        @flight_log.user = current_user

        if @flight_log.save
          render(json: { error: false, message: ::I18n.t('controllers.flight_log.saved_ok') })
        else
          render(
            json: {
              error: true,
              message: ::I18n.t('controllers.flight_log.unable2save') + @flight_log.errors.full_messages.join('<br/>')
            },
            status: :unprocessable_entity
          )
        end
      end

      # PATCH/PUT /flight_logs/1
      def update
        if @flight_log.update(flight_log_params)
          render(json: { error: false, message: ::I18n.t('controllers.flight_log.saved_ok') })
        else
          render(
            json: {
              error: true,
              message: ::I18n.t('controllers.flight_log.unable2save') + @flight_log.errors.full_messages.join('<br/>')
            },
            status: :unprocessable_entity
          )
        end
      end

      # DELETE /flight_logs/1
      def destroy
        @flight_log.destroy
      end

      # GET /flight_logs/totalize
      def totalize
        query = ::FlightLog.where(user_id: current_user.id)
        query = query.where("flight_start >= ?", params[:start_date]) if params[:start_date].present?
        query = query.where("flight_end <= ?", params[:end_date]) if params[:start_date].present?
        total_hours = 0
        query.select(:flight_end, :flight_start).each do |fl|
          duration = ::Services::Normalizer.normalized_hours(fl.flight_start, fl.flight_end)
          total_hours += duration
        end
        render(json: { total: total_hours, start_date: params[:start_date], end_date: params[:end_date] })
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_flight_log
        query = current_user.superadmin? ? ::FlightLog.all : ::FlightLog.for_user(current_user)
        @flight_log = query.find(params[:id])
      rescue ::ActiveRecord::RecordNotFound
        @errors << ::I18n.t('controllers.flight_log.not_found')
      end

      # Only allow a list of trusted parameters through.
      def flight_log_params
        params.require(:flight_log)
          .permit(
            :airplane_id,
            :flight_start,
            :flight_end,
            :flight_type,
            :instructor_id,
            :odo_end,
            :odo_start,
            :origin_airport,
            :destination_airport,
            :passenger_count
          )
      end
    end
  end
end
