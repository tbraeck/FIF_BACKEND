Rails.application.routes.draw do
  resources :products
  resources :product_accepteds
  resources :sellers
  resources :donors


  
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    post "/signup", to: "users#create"
    get "/me", to: "users#show"
  
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  
    get '*path', to: 'fallback#index', constraints: ->(req) { !req.xhr? && req.format.html? }
   

  # Defines the root path route ("/")
  # root "posts#index"
end
