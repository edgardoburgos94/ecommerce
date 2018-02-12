class SuppliersController < ApplicationController
  def show
    # if params[:concept].present?
    #   @categories_search = @categories.where("lower(title) like lower(?)", "%#{params[:concept]}%")
    #   @sub_categories_search = @sub_categories.where("lower(title) like lower(?)", "%#{params[:concept]}%")
    #   @products_search = @all_products.where("lower(title) like lower(?)", "%#{params[:concept]}%").order("RANDOM()")
    #   @supplier_search = Supplier.all.where("lower(full_name) like lower(?)", "%#{params[:concept]}%")
    # end
    find_supplier_subcategories()
    @supplier = Supplier.find(params[:id])

  end

  def edit
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy

    if @supplier.destroy
        redirect_to suppli_list_path, notice: "Proveedor eliminado"
    end
  end

  def find_supplier_subcategories
    @supplier_subcategories =[]
    supplier_sucategories_title = []
    Supplier.find(params[:id]).products.each do |product|
      subcate = product.sub_category.title
      if not supplier_sucategories_title.include? subcate
        supplier_sucategories_title.push(subcate)
        @supplier_subcategories.push(product)
      end
    end
    puts(supplier_sucategories_title)
    puts("<-------------------------------")
    @supplier_subcategories
  end
end
