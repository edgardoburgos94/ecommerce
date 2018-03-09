class ProductsController < ApplicationController
  def index
    @products = Category.find(params[:category_id]).sub_categories.find(params[:sub_category_id]).products
  end

  def new
    @product = Product.new(sub_category_id: SubCategory.all.first.id)
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'Se creó el producto exitosamente'
      redirect_to choose_url
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.list_groups.new.order_items.new
  end

  def edit
    @product = Product.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to produ_list_url
    else
      render :edit
    end

  end

  def choose
    @categories = Category.all
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to request.referrer
  end

  private
  def product_params
    params.require(:product).permit(:title, :description, :img_url, :price, :sub_category_id, :list_id, :xs, :s, :m, :l, :xl, :xxl, :supplier_id, :image)
  end

end
