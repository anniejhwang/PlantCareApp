Rails.application.routes.draw do
  resources :schedules

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/plants" => "plants#index"
  get "/schedules" => "schedules#index"
  post "/schedules" => "schedules#create"
end
