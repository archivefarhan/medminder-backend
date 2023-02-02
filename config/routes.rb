Rails.application.routes.draw do
  ### User Routes
  post "/users" => "users#create"

  ## Sessions Routes
  post "/sessions" => "sessions#create"

  ### Medications Routes
  get "/medications" => "medications#index"
  get "/medications/:id" => "medications#show"
  post "/medications" => "medications#create"
  patch "/medications/:id" => "medications#update"
  delete "/medications/:id" => "medications#destroy"
end
