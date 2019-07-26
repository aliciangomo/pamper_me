Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "dashboard", to: 'pages#dashboard', as: "dashboard"

  put "/bookings/:id/confirm", to: 'bookings#confirm', as: "confirm"

  put "/bookings/:id/decline", to: 'bookings#decline', as: "decline"

  get "review_booking/bookings/:id", to: 'pages#review_booking', as: "review_booking"


  resources :treatments do
    resources :bookings, except: [:create, :update]
  end

  resources :bookings, only: [:create, :update]


  resources :providers
end
