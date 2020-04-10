Rails.application.routes.draw do
  devise_for :users
  root to: "cameras#index"
  resources :users, only: [:show]
  resources :cameras do
    resources :bookings, only: [:new, :create]
  end  
end
