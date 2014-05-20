GameApp::Application.routes.draw do
  resources :games
  resources :users do 
    member do
      match :overview
      match :opponents
      match :challenges
    end
  end



  resources :sessions, only: [:new, :create, :destroy]

  get "/login", to: "sessions#new"
  #get "/me", to: "users#show"

  root to: "users#show"
end
