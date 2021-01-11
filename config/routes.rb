Rails.application.routes.draw do
  devise_for :users
  resources :plan, only: [:index,:new,:create]
  root to: "entrances#index"
end
