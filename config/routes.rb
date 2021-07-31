Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/signin'
  root "users#home"
  resources :attractions
  resources :rides
  # resources :users, only: [:new, :show]
  get "/users/new", to: "users#new"
  get "/users/:id", to: "users#show", as: "user"
  post "/users", to: "users#create"
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create", as: "signedin"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
