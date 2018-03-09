class OrderItemsController < ApplicationController
  def create
		@order = current_order

    product_list_id = Product.find(params[:order_item][:product_id]).list.id
    if @order.list_groups.where(list_id: product_list_id).length == 1
      @order_item = @order.list_groups.where(list_id: product_list_id).first.order_items.new(order_item_params)
    else
      @list = @order.list_groups.new(list_id: product_list_id)
      @order_item = @list.order_items.new(order_item_params)
    end

    @order_item.discount = 0

    if @order_item.quantity <= @order_item.size.split('|')[0].to_i
  		if @order.save && @order_item.save
    		session[:order_id] = @order.id
        flash[:notice] = "El producto se a agregado a tu carrito"
        redirect_to request.referrer
      else
        flash[:notice] = "Error en guardar el producto"
        redirect_to request.referrer
      end
    else
      flash[:alert] = "La cantidad máxima para el producto seleccionado es de #{@order_item.size.split('|')[0].to_i}"
      redirect_to request.referrer
    end

	end

	def update
		@order = current_order
		@order_item = OrderItem.find(params[:id])
		@order_item.update_attributes(order_item_params)
    @list_groups = current_order.list_groups.order(:list_id)
	end

	def show
		puts("Entra al show <-----------------------------")
		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.destroy
		@order_items = @order.order_items
		redirect_to carts_path
	end

	def destroy
		puts("Entra al destroy <-----------------------------")
    puts("#{params} paramssss <-------------------------")
		@order_item = OrderItem.find(params[:id])
    if @order_item.list_group.order_items.length == 1
      @order_item.destroy
      @order_item.list_group.destroy
    else
		  @order_item.destroy
    end
		@list_groups = current_order.list_groups.order(:list_id)
    redirect_to request.referrer
	end

	private
		def order_item_params
			params.require(:order_item).permit(:product_id, :quantity, :size)
		end
end
