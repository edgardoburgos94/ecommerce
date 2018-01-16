class OrderItemsController < ApplicationController
  def create
		@order = current_order
		@order_item = @order.order_items.new(order_item_params)
    if user_signed_in?
      promo1 = @order_item.product.category.supplier.p_ure/100
      promo2 = []
      if @order_item.quantity >= @order_item.product.category.supplier.cant_may
        puts("Descuento por usuario mayorista <-----------------------------------------")
        promo2.push(@order_item.product.category.supplier.p_cmay/100)
      end
      if @order_item.product.category.supplier.p_dia/100 > 0
        puts("Descuento por promoción del día <-----------------------------------------")
        promo2.push(@order_item.product.category.supplier.p_dia/100)
      end
      if current_user.sign_in_count > 50
        puts("Descuento por usuario frecuente <-----------------------------------------")
        promo2.push(@order_item.product.category.supplier.p_cmin/100)
      end
      if promo2.length > 0
        promotion = promo1 + promo2.max
      else
        promotion = promo1
      end
    else
      promotion = 0
    end
    @order_item.discount = promotion
    puts(@order_item.size)
    puts(@order_item.size.to_i.class)
    # OrderItem.validate_order_item(@order_item.size.to_i)
		@order.save
		session[:order_id] = @order.id

	end

	def update
		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.update_attributes(order_item_params)
		@order_items = @order.order_items

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
		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.destroy
		@order_items = @order.order_items

	end

	private
		def order_item_params
			params.require(:order_item).permit(:product_id, :quantity, :size)
		end
end
