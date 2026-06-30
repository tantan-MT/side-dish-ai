Rails.application.routes.draw do
  devise_for :users

  root "home#index"
  match "/", to: "home#index", via: [:get, :head]

  get "home/index"
  get "ingredients/index"
  resources :ingredients, only: [:index]

  resources :recipes
  resources :favorites, only: [:index, :show, :create, :destroy]

  resource :user, only: [:show]
  resources :contacts, only: [:new, :create]

  get "static_pages/privacy_policy"
  get "privacy_policy", to: "static_pages#privacy_policy"
  get "terms", to: "static_pages#terms"

  get "up" => "rails/health#show", as: :rails_health_check
end
