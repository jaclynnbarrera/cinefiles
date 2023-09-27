Rails.application.routes.draw do
  root "images#landing"

  get "/images", to: "images#index"
end
