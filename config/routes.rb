Rails.application.routes.draw do
  devise_for :users
  resources :cameras
  root to: "cameras#index"
end
