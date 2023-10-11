Rails.application.routes.draw do
  root "images#landing"

  get "/images", to: "images#index"
  get "/login", to: "sessions#new" # Display the login form
  post "/login", to: "sessions#create" # Process login
  delete "/logout", to: "sessions#destroy" # Logout
  get "/admin/upload", to: "images#new" #image upload
end
