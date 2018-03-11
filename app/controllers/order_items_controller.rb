class OrderItemsController < ApplicationController
  def create
		@order = current_order
    @order.save

    product_list_id = Product.find(params[:order_item][:product_id]).list.id
    if @order.list_groups.where(list_id: product_list_id).length == 1
      @list=@order.list_groups.where(list_id: product_list_id).first
      @order_item = @order.list_groups.where(list_id: product_list_id).first.order_items.create(order_item_params)
      @order_item.list_group.save
      @order_item.list_group.order_items.each do |order_item|
        order_item.save
      end
      @order.save
    else
      @list = @order.list_groups.create(list_id: product_list_id, shipping: 0, discount: 0, quantity:0)
      @order_item = @list.order_items.new(order_item_params)

      @order_item.list_group.save
      @order_item.save
      @order.save
    end

    @order_item.discount = @order_item.list_group.discount

		if @order.save && @order_item.save
      @order_item.list_group.order_items.each do |order_item|
        order_item.save
      end
      @list.save
      @order_item.list_group.order_items.each do |order_item|
        order_item.save
      end
      current_order.save
  		session[:order_id] = @order.id
      flash[:notice] = "El producto se a agregado a tu carrito"
      # respond_to do |format|
      #   format.html {redirect_to request.referrer}
      #   format.js
      # end

    else
      flash[:alert] = "La cantidad máxima para el producto seleccionado es de #{@order_item.size.split('|')[0].to_i}"
      # respond_to do |format|
      #   format.html {redirect_to request.referrer}
      #   format.js
      # end
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
    @list_group_id = OrderItem.find(params[:id]).list_group.id

    if ListGroup.find(@list_group_id).order_items.length == 1
      @order_item.destroy
      @list_group = ListGroup.find(@list_group_id)
      @list_group.destroy
      @order.save
    else
		  @order_item.destroy
      @list_group = ListGroup.find(@list_group_id)
      @list_group.save
      @list_group.order_items.each do |order_item|
        order_item.save
      end
      @order.save
    end

		@list_groups = current_order.list_groups.order(:list_id)
	end

	private
		def order_item_params
			params.require(:order_item).permit(:product_id, :quantity, :size)
		end
end
