Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/plants" => "plants#index"
  get "/schedules" => "schedules#index"
  post "/schedules" => "schedules#create"
end
