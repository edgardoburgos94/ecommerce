class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @sub_categories = SubCategories.all
    @all_products = Product.all

    products_in_promotion()

    if params[:concept].present?
      @categories = @categories.where("title LIKE ?", "%#{params[:concept]}%")
      @sub_categories = @sub_categories.where("title LIKE ?", "%#{params[:concept]}%")
      @products = @all_products.where("title LIKE ?", "%#{params[:concept]}%")
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
    @products_in_promotion =[]
    @products_with_promotion = Product.where("p_day > ?",0)
  end
end
