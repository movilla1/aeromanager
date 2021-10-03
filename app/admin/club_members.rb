# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::ActiveAdmin.register(::ClubMember, as: 'ClubMember') do
  permit_params :aeroclub_id, :user_id, :start_date, :end_date, :active, :banned, :instructor
end
