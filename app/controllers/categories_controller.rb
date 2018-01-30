class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @all_products = Product.all
    products_in_promotion()

    if params[:concept].present?
      @categories = @categories.where("title LIKE ?", "%#{params[:concept]}%")
    end
  end

  def new
    @category = Category.new()
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Se creó la categoría exitosamente'
      redirect_to admin_url
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to cate_list_url
    else
      render :edit
    end

  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to cate_list_url
  end

  private
  def category_params
    params.require(:category).permit(:title, :img_url, :supplier_id)
  end

  def products_in_promotion
    suppliers_with_promotion = Supplier.where("p_dia > ?",0)
    @products_with_promotion = []
    suppliers_with_promotion.each do |supplier|
      @products_with_promotion = @products_with_promotion + supplier.products
    end
  end
end
