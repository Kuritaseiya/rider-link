Rails.application.routes.draw do
  devise_for :users
  root to: "entrances#index"
  resources :plan do
    resources :child, only: [:new,:create]
  end
  resources :user, only: [:index]
  resources :all_user, only: [:index,:show]
  resources :my_plan, only: [:index]
  resources :child_plan, only: [:index]
end
