Rails.application.routes.draw do
  devise_for :users
  root to: "entrances#index"
  resources :plan
  resources :user, only: [:index]
end
