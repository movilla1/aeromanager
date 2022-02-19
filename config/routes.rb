# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::Rails.application.routes.draw do
  devise_for :users
  ::ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

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

  root to: 'pages#index'
end
