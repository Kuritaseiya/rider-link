Rails.application.routes.draw do
  devise_for :users
  root to: "entrances#index"
  resources :plan do
    resources :messages, only: [:new,:create]
  end
  resources :user, only: [:index]
end
