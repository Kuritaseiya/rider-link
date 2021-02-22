Rails.application.routes.draw do
  devise_for :users
  root to: "entrances#index"
  resources :plan do
    resources :child, only: [:new,:create]
  end
  resources :user, only: [:index]
end
