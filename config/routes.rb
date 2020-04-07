Rails.application.routes.draw do
  devise_for :users
  root to: "cameras#index"
  resources :cameras
end
