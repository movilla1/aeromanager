# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::Rails.application.routes.draw do
  ::ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :aeroclubs
    resources :aeroplanes
    resources :club_members
    resources :consumables
    resources :invoices
    resources :maintenance_records
    resources :users
  end

  namespace :api do
    namespace :v1 do
      get 'airplanes/index'
      resources :flight_logs
      get '/airplanes', to: 'airplanes#index'
      post 'authenticate', to: 'authentication#authenticate'
      post '/user/changepass', to: 'users#update_password'
      post '/user', to: 'users#update'
      get '/users/instructors', to: 'users#instructors'
    end
  end

  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create', as: 'signin'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root to: 'pages#index'
end
