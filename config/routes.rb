Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "dashboard", to: 'pages#dashboard', as: "dashboard"
  get "review_booking/bookings/:id", to: 'pages#review_booking', as: "review_booking"

  resources :treatments do
    resources :bookings, expect: [:create]
  end

  resources :bookings, only: [:create]


  resources :providers
end
