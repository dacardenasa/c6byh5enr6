Rails.application.routes.draw do
  get "api/v1/products", to: "products#index"
  post "api/v1/products", to: "products#create"
  resources :products, only: [:show, :update, :destroy]
end
