class ProductsController < ApplicationController
  def index
    @products = Category.find(params[:category_id]).products
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to produ_list_url
  end


end
