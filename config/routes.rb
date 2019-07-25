Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "dashboard", to: 'pages#dashboard', as: "dashboard"
  put "/bookings/:id/confirm", to: 'bookings#confirm', as: "confirm"

  resources :treatments do
    resources :bookings
  end

  resources :providers
end
