class CartsController < ApplicationController
  def show
		@list_groups = current_order.list_groups.order(:list_id)
	end
end
