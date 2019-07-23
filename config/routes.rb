Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "dashboard", to: 'pages#dashboard', as: "dashboard"

  resources :treatments do
    resources :bookings
  end

  resources :providers
end
