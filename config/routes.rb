Rails.application.routes.draw do
  resources :posts
  get '/stats', to: "posts#stats"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
