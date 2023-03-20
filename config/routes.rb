Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/plants" => "plants#index"
  post "/plants" => "plants#create"
  get "/plants/:id" => "plants#show"
  patch "/plants/:id" => "plants#update"
end
