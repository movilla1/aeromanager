# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::ActiveAdmin.register(::MaintenanceRecord, as: "MaintenanceRecord") do
  permit_params :airplane_id, :user_id, :description, :hours_extended, :created_at

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input(:user)
      f.input(:airplane)
      f.input(:created_at)
      f.input(:hours_extended, as: :number)
      f.input(:description, as: :text)
    end
    f.actions
  end
end
