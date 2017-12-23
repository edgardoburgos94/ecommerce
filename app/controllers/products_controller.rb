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

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to produ_list_url
    else
      render :edit
    end

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to produ_list_url
  end

  private
  def product_params
    params.require(:product).permit(:title, :description, :img_url, :price, :category_id, :xs, :s, :m, :l, :xl, :xxl)
  end

end
