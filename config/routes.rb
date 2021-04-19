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
  resources :company, only: [:index]
  resources :terms, only: [:index]
  resources :news, only: [:index]
  resources :question, only: [:index]
  resources :use_technology, only: [:index]
  resources :admin, only: [:index]
  resources :admin_user, only: [:index]
  resources :infometion, only: [:index,:new,:create,:show]
end
