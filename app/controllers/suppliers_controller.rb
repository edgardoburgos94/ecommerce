class SuppliersController < ApplicationController
  def edit
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy

    if @supplier.destroy
        redirect_to suppli_list_path, notice: "Supplier deleted."
    end
  end
end
