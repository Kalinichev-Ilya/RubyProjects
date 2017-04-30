Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  resources :trains
  resources :railway_stations
  resources :routes
  resources :tickets
  resources :users
  resources :wagons
  resources :seats
end
