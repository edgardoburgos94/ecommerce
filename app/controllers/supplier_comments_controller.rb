class SupplierCommentsController < ApplicationController
  def create
    supplier = Supplier.find(params[:supplier_id])
    supplier.supplier_comments.create(supplier_comments_params)

    redirect_to request.referer
  end

  private
    def supplier_comments_params
      params.require(:supplier_comment).permit(:body).merge(user: current_user)
    end

end
