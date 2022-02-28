# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware

::ActiveAdmin.register_page("reports") do
  menu label: proc{ ::I18n.t("reports.title") }
  content title: proc { ::I18n.t("reports.title") } do
    render partial: "reports/dashboard"
  end

  action_item :by_aircraft do
    link_to ::I18n.t("reports.by_aircraft"), admin_reports_select_by_aircraft_path, method: :get
  end

  action_item :by_pilot do
    link_to ::I18n.t("reports.by_pilot"), admin_reports_select_by_pilot_path, method: :get
  end

  action_item :flight_book do
    link_to ::I18n.t("reports.flightbook"), admin_reports_flightbook_path, method: :get
  end

  page_action :select_by_pilot, as: proc { ::I18n.t('reports.select_by_pilot') } do
    @action = :exec_by_pilot
    @type = "pilot"
    render "select_by_date"
  end

  page_action :flightbook, as: proc { ::I18n.t('reports.flightbook') } do
    render "flightbook"
  end

  page_action :select_by_aircraft do
    @action = :exec_by_aircraft
    @type = "aircraft"
    render "select_by_date"
  end

  page_action :exec_by_aircraft, method: :post, title: ::I18n.t("reports.report_by_aircraft") do
    parameters = params[:reports]
    report = ::Reports::ByAircraft.new(parameters[:start_date], parameters[:end_date], parameters[:airplane])
    plane = ::Airplane.find(parameters[:airplane])
    report_result = report.execute
    render "reports/by_aircraft", locals: {
      report: report_result[:result],
      plane_identifier: plane.identifier,
      last_maintenance: report_result[:last_maintenance]
    }
  end

  page_action :exec_by_pilot, method: :post, title: ::I18n.t("reports.report_by_pilot") do
    parameters = params[:reports]
    report = ::Reports::ByPilot.new(parameters[:start_date], parameters[:end_date])
    render "reports/by_pilot", locals: { report: report }
  end

  page_action :exec_flightbook, method: :post, title: ::I18n.t("reports.flightbook") do
    date_start = params.dig(:reports, :start_date)
    date_end = params.dig(:reports, :end_date)
    club_id = params.dig(:reports, :aeroclub)
    report = ::Reports::FlightBook.new(date_start, date_end, club_id).call
    render "reports/flightbook", locals: { report: report }
  end
end
