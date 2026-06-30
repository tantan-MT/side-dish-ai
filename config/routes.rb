Rails.application.routes.draw do
  devise_for :users

  # =========================
  # ホーム
  # =========================
  root "home#index"

  # rootと重複しているので削除OK（必要なし）
  # match "/", to: "home#index", via: [:get, :head]

  # =========================
  # ホーム・食材
  # =========================
  get "home/index"
  resources :ingredients, only: [ :index ]

  # ingredients/index は不要（resourcesでカバー済み）
  # get "ingredients/index"

  # =========================
  # レシピ
  # =========================
  resources :recipes, only: [ :create, :show ]

  # =========================
  # お気に入り
  # =========================
  resources :favorites, only: [ :index, :show, :create, :destroy ]

  # =========================
  # ユーザー
  # =========================
  resource :user, only: [ :show ]

  # =========================
  # お問い合わせ
  # =========================
  resources :contacts, only: [ :new, :create ]

  # =========================
  # 静的ページ
  # =========================
  get "static_pages/privacy_policy"
  get "privacy_policy", to: "static_pages#privacy_policy"
  get "terms", to: "static_pages#terms"

  # =========================
  # ヘルスチェック
  # =========================
  get "up" => "rails/health#show", as: :rails_health_check
end
