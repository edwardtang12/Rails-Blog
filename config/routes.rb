Rails.application.routes.draw do
  resources :posts
  resources :comments, only: [:create]

  root 'posts#index'
  get '/stats', to: "posts#stats", as: "stats"
  get '/about', to: "static_pages#about", as: "about"

  resources :categories, only: [:show]
  resources :tags, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
