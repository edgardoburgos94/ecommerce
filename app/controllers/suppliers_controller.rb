class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end
  def show
    find_supplier_subcategories()
    @supplier = Supplier.find(params[:id])

    if params[:subcategory].present?
      @product_search = @supplier.products.where(sub_category_id: params[:subcategory])
    else
      @product_search = @supplier.products.all
    end
    params.delete(:subcategory)
  end

  def my_products
    @products = current_supplier.products
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
        @supplier_subcategories.push(product.sub_category)
      end
    end
    @supplier_subcategories
  end
end
