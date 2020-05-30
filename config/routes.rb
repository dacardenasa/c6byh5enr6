Rails.application.routes.draw do
  get "api/v1/products", to: "products#index"
  post "api/v1/products", to: "products#create"
  patch "api/v1/products/:id", to: "products#update"
  delete "api/v1/products/:id", to: "products#destroy"
end
