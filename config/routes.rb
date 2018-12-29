Rails.application.routes.draw do
  get "/:page", to: "imprint#show"

  resources :sessions, only: [:create, :new, :destroy], :path => "login"

  resources :posts
    root to: 'posts#index'
  end
