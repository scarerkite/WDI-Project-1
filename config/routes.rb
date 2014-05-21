GameApp::Application.routes.draw do
  resources :games do
    member do
      resources :moves, only: [:create]
      match :accept
      match :decline
    end
  end

  resources :users do 
    member do
      match :overview
      match :opponents
      match :challenges
    end
  end

  



  resources :sessions, only: [:new, :create, :destroy]

  get "/login", to: "sessions#new"

  root to: "users#show"
end
