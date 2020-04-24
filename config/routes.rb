Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :cameras do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create, :show]
  end
  resources :reviews, only: [:destroy]


  get '/dashboard', to: 'dashboard#main'

  get '/users/:id', to: 'profiles#show', as: 'profile'

end
