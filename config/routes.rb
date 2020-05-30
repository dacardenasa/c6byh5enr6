Rails.application.routes.draw do
  resources :products, path: 'api/v1/products'
end
