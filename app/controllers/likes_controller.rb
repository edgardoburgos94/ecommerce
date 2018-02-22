class LikesController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    product.likes.create(user: current_user)

    if product.save
    else
      flash[:alert] = "Algo salío mal"
    end

    redirect_to request.referer
  end

  def destroy
    product = Product.find(params[:product_id])
    product.likes.where(user: current_user).take.try(:destroy)

    redirect_to request.referer
  end
end
