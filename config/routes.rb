Rails.application.routes.draw do
  resources :sessions, only: [:create, :new, :destroy], :path => "login"

  resources :posts
    root to: 'posts#index'
  end
