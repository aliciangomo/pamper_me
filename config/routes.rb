Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "dashboard", to: 'pages#dashboard', as: "dashboard"

  put "/bookings/:id/confirm", to: 'bookings#confirm', as: "confirm"

  put "/bookings/:id/decline", to: 'bookings#decline', as: "decline"

  get "review_booking/bookings/:id", to: 'pages#review_booking', as: "review_booking"

  put "/bookings/:id/stripe_payment", to: 'payments#stripe_payment', as: "stripe_payment"

  put "/bookings/:id/apple_payment", to: 'payments#apple_payment', as: "apple_payment"

  put "/bookings/:id/paypal_payment", to: 'payments#paypal_payment', as: "paypal_payment"

  resources :treatments do
    resources :bookings, except: [:create, :update]
  end

  resources :bookings, only: [:create, :update] do
    resources :payments, only: [:new, :create]
  end


  resources :providers do
    resources :images, only: [:create, :index, :new]
    resources :reviews, only: :create
  end

  resources :images, only: [:destroy]
end
