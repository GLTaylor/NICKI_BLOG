Rails.application.routes.draw do
  resources :login, only: [:create, :new]

  resources :posts
    root to: 'posts#index'
  end
