Rails.application.routes.draw do
  # resources :products, path: 'api/v1/products'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products, only: [:index, :create, :update, :destroy]
    end
  end

end
