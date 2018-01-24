class ProductCommentsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    product.product_comments.create(product_comments_params)

    redirect_to request.referer
  end

  private
    def product_comments_params
      params.require(:product_comment).permit(:body).merge(user: current_user)
    end
end
