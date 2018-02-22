class FavouritesController < ApplicationController
  def create
    supplier = Product.find(params[:product_id]).supplier
    supplier.favourites.create(user:current_user)
    if supplier.save
      flash[:notice] = "Has agregado exitosamente el proveedor a favoritos"
    else
      flash[:alert] = "Algo salío mal"
    end
    redirect_to request.referer
  end

  def destroy
    supplier = Product.find(params[:product_id]).supplier
    supplier.favourites.where(user:current_user).take.try(:destroy)
    redirect_to request.referer

    flash[:notice] = "Se eliminó este proveedor de tus favoritos"
  end
end
