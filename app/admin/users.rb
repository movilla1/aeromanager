# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::ActiveAdmin.register(::User, as: 'User') do
  index do
    column :name
    column :email
    column :role
    column :license
    column :license_type
    column :active
    column :confirmed
    column :created_at
    column :updated_at
  end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input(:name)
      f.input(:email)
      f.input(:password)
      f.input(:password_confirmation)
      f.input(:role)
      f.input(:active, as: :select)
      f.input(:confirmed, as: :select)
    end
    f.actions
  end

  permit_params do
    %i[name email password password_confirmation role active confirmed]
  end
end