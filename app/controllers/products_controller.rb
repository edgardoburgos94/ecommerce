class ProductsController < ApplicationController
  def index
    @products = Category.find(params[:category_id]).sub_categories.find(params[:sub_category_id]).products
  end

  def new
    @product = Category.find(params[:category_id]).products.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'Se creó el producto exitosamente'
      redirect_to cate_list_url
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
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
    params.require(:product).permit(:title, :description, :img_url, :price, :category_id, :xs, :s, :m, :l, :xl, :xxl, :supplier_id)
  end

end
