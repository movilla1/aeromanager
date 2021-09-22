# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::ActiveAdmin.register(::Invoice, as: "Invoice") do
  permit_params :user_id, :creator_id, :description
end
