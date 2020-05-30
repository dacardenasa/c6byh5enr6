Rails.application.routes.draw do
  get "api/v1/products", to: "products#index"
  resources :products, only: [:show, :create, :update, :destroy]
end
