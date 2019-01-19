Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get "/:page", to: "imprint#show"

  resources :sessions, only: [:create, :new, :destroy], :path => "login"

  resources :posts
    root to: 'posts#index'
  end
