GameApp::Application.routes.draw do
  resources :games
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get "/login", to: "sessions#new"

  root to: "users#show"
end
