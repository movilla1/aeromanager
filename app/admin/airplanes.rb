# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::ActiveAdmin.register(::Airplane, as: "Airplane") do
  permit_params :make, :model, :adquired, :designation, :aeroclub_id
end
