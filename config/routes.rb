Rails.application.routes.draw do
  devise_for :users
  root to: "entrances#index"
  resources :plan, only: [:index,:new,:create]
  resources :user, only: [:index]
end
