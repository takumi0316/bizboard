Rails.application.routes.draw do
  
  # TOP
  root 'home#index'

  # 認証
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/sign_in', to: 'users/sessions#new'
  end

  # ユーザー管理
  resources :users, only: [:index, :edit, :update, :destroy]
end
