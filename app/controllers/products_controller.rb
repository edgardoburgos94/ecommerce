class ProductsController < ApplicationController
  def index
    @products = Category.find(params[:category_id]).products
  end


end
