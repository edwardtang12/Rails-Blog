Rails.application.routes.draw do
  resources :posts
  resources :comments, only: [:create]
  resources :categories do
    resources :posts
  end
  resources :tags do
    resources :posts
  end
  root 'posts#index'
  get '/stats', to: "posts#stats", as: "stats"
  get '/about', to: "static_pages#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
