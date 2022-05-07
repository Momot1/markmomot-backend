Rails.application.routes.draw do
  
    # Login/logout routes
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"

    # Signup and crab user info routes
    post "/signup", to: "users#create"
    get "/me", to: "users#show"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
