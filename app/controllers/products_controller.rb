class ProductsController < ApplicationController
  def index
    @products = Category.find(params[:category_id]).sub_categories.find(params[:sub_category_id]).products
  end

  def new
    @product = Product.new(sub_category_id: SubCategory.all.first.id)
    @category = Category.find(params[:category_id])
    @list =List.new
    @produ = @list.products.build
  end

  def create
    puts(params[:new_list])
    @category = Category.find(params[:category_id])
    puts(params[:new_list])
    if params[:new_list] == "new"
      puts("----------------CREA UNA NUEVA LISTA----------------------")
      @list= List.new(list_params)

      if @list.save
        @product = @list.products.new(nested_product_params[:products_attributes]["0"].except(:list_id))

        if @product.save
          flash[:notice] = 'Se creó el producto exitosamente'
          redirect_to choose_url
        else
          @produ = @list.products.build(nested_product_params[:products_attributes]["0"].except(:list_id))
          render :new
        end
      else
        @produ = @list.products.build(nested_product_params[:products_attributes]["0"].except(:list_id))
        @product = @list.products.new(nested_product_params[:products_attributes]["0"].except(:list_id))
        render :new
      end
    elsif params[:new_list] == "unique"
      puts("----------------USA UNA LISTA PARA UN PRODUCTO ÚNICO---------------------")
      puts("DEFAULT PRICE: #{params[:default_price]}")
      @list= List.new(title:"Lista producto único",free_shipping: false, promotion:false, quantity:true, price: false, q1:1, sp_q1:params[:default_price], supplier_id: current_supplier.id)

      if @list.save
        @product = @list.products.new(nested_product_params[:products_attributes]["0"].except(:list_id))

        if @product.save
          flash[:notice] = 'Se creó el producto exitosamente'
          redirect_to choose_url
        else
          @produ = @list.products.build(nested_product_params[:products_attributes]["0"].except(:list_id))
          render :new
        end
      else
        @produ = @list.products.build(nested_product_params[:products_attributes]["0"].except(:list_id))
        @product = @list.products.new(nested_product_params[:products_attributes]["0"].except(:list_id))
        render :new
      end
    else
      puts("----------------USA UNA LISTA EXISTENTE----------------------")
      @product = Product.new(nested_product_params[:products_attributes]["0"])
      if @product.save
        flash[:notice] = 'Se creó el producto exitosamente'
        redirect_to choose_url
      else
        puts("#{@product.errors.full_messages} <----------------------------")
        @list= List.new
        @produ = @list.products.build(nested_product_params[:products_attributes]["0"].except(:list_id))
        render :new
      end
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
    params.require(:product).permit(:title, :description, :img_url, :price,
      :sub_category_id, :list_id, :supplier_id, :p_day, :s1, :s2, :s3, :s4, :s5,
       :s6, :s7, :s8, :s9, :s10, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9,
       :q10, :check_unique, :unique)
  end
  def nested_product_params
    params.require(:list).permit(products_attributes: [:title, :description,
      :img_url, :price, :sub_category_id, :list_id, :supplier_id, :p_day, :s1,
      :s2, :s3, :s4, :s5, :s6, :s7, :s8, :s9, :s10, :q1, :q2, :q3, :q4, :q5,
      :q6, :q7, :q8, :q9, :q10, :check_unique, :unique])
  end
  def list_params
    params.require(:list).permit(:title, :supplier_id, :free_shipping, :promotion,
       :quantity, :price, :q1, :q2, :q3, :q4, :p_q1, :p_q2, :p_q3, :p_q4, :p1,
       :p2, :p3, :p4, :p_p1, :p_p2, :p_p3, :p_p4, :sq1,:sq2, :sq3, :sq4, :sp_q1,
        :sp_q2, :sp_q3, :sp_q4, :sp1, :sp2, :sp3, :sp4, :sp_p1, :sp_p2, :sp_p3,
        :sp_p4)
  end
end
