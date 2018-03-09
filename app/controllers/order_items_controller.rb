class OrderItemsController < ApplicationController
  def create
		@order = current_order

    product_list_id = Product.find(params[:order_item][:product_id]).list.id
    if @order.list_groups.where(list_id: product_list_id).length == 1
      @list=@order.list_groups.where(list_id: product_list_id).first
      @order_item = @order.list_groups.where(list_id: product_list_id).first.order_items.new(order_item_params)
    else
      @list = @order.list_groups.create(list_id: product_list_id, shipping: 0, discount: 0, quantity:0)
      @order_item = @list.order_items.new(order_item_params)
    end
    # puts("List group: #{@list} <-----------------------------")
    # puts("List group shipping: #{@list.shipping} <-----------------------------")
    # puts("List group discount: #{@list.discount} <-----------------------------")
    # puts("List group quantity: #{@list.quantity} <-----------------------------")
    #
    #
    #
    # puts("Order Item: #{@order_item} <---------------------------")
    # puts("Order Item dicount: #{@order_item.discount} <---------------------------")
    # puts("Order Item shipping: #{@order_item.shipping} <---------------------------")
    # puts("Order Item total: #{@order_item.total_price} <---------------------------")
    @order_item.discount = @order_item.list_group.discount

		if @order.save && @order_item.save
      @order_item.list_group.order_items.each do |order_item|
        order_item.save
      end
      @list.save
      @order_item.list_group.order_items.each do |order_item|
        order_item.save
      end
  		session[:order_id] = @order.id
      flash[:notice] = "El producto se a agregado a tu carrito"
      redirect_to request.referrer
    else
      flash[:alert] = "La cantidad máxima para el producto seleccionado es de #{@order_item.size.split('|')[0].to_i}"
      redirect_to request.referrer
    end

	end

	def update
		@order = current_order
		@order_item = OrderItem.find(params[:id])
		@order_item.update_attributes(order_item_params)
    @order_item.list_group.save
    @order_item.list_group.order_items.each do |order_item|
      order_item.save
    end
    @order.save
    @list_groups = current_order.list_groups.order(:list_id)
	end

	def destroy
    @order = current_order
		@order_item = OrderItem.find(params[:id])
    if @order_item.list_group.order_items.length == 1
      @order_item.destroy
      @order_item.list_group.save
      @order_item.list_group.destroy
    else
		  @order_item.destroy
      @order_item.list_group.save
      @order_item.list_group.order_items.each do |order_item|
        order_item.save
      end
    end

    @order.save
		@list_groups = current_order.list_groups.order(:list_id)
    redirect_to request.referrer
	end

	private
		def order_item_params
			params.require(:order_item).permit(:product_id, :quantity, :size)
		end
end
