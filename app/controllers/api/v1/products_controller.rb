class Api::V1::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @products = Product.all
    render json: @products
  end

  def create
    product = Product.create(product_params)
    if product.save
      render json: product, status: 201
    else
      render json: { errors: product.errors }, status: 422
    end
  end

  def update
    product = Product.update(params[:id], product_params)
    if product
      render json: product
    else
      render json: { errors: product.errors }, status: 422
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    head :no_content
  end

  private
    def product_params
      params.permit(:name, :price)
    end

end
