# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::ActiveAdmin.register(::Aeroclub, as: 'Aeroclub') do
  permit_params :name, :address, :phone, :web, :facebook, :lat, :long
end
