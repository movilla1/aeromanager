# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::ActiveAdmin.register(::AeromanagerModels::Airplane, as: "Airplane") do

  permit_params :make, :model, :adquired, :designation, :aeroclub_id
end
