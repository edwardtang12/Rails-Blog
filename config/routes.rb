Rails.application.routes.draw do
  resources :posts
  root 'posts#index'
  get '/stats', to: "posts#stats", as: "stats"
  # get 'static_pages/about'
  get '/about', to: "static_pages#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
