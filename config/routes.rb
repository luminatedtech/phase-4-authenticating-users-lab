Rails.application.routes.draw do
  resources :articles,:sessions,:users, only: [:index, :show,:delete]
  
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
end 