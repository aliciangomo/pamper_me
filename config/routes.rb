Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :treatments do
    resources :bookings
  end

  resources :providers
end
