class SuppliersController < ApplicationController
  def show
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
end
