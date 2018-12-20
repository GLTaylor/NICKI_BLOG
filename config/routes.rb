Rails.application.routes.draw do
  resources :sessions, only: [:create, :new, :destroy]

  resources :posts
    root to: 'posts#index'
  end
