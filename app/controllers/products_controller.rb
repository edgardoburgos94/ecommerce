class ProductsController < ApplicationController
  def index
    @products = Category.find(params[:category_id]).products
  end

  def show
    @product = Product.find(params[:id])
  end


end
