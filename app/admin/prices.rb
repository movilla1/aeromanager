# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::ActiveAdmin.register(::Price, as: 'Price') do
  permit_params :amount, :name, :active, :date_deactivated
end
