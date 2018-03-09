# == Schema Information
#
# Table name: order_items
#
#  id            :integer          not null, primary key
#  product_id    :integer
#  unit_price    :float
#  quantity      :integer
#  total_price   :float
#  size          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  discount      :float
#  shipping      :float
#  list_group_id :integer
#
# Indexes
#
#  index_order_items_on_list_group_id  (list_group_id)
#

class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :list_group

  before_save :set_unit_price
  before_save :set_total_price
	before_save :set_discount
  before_save :set_shipping
  before_update :set_discount
  before_update :set_shipping

	def unit_price
		if persisted?
			self[:unit_price]
		else
			product.price
		end
	end

  def product_shipping
    if product.list.free_shipping == true
      0
    else
      1
    #   if product.list.quantity == true
    #     shipping_vals = [product.list.q1, product.list.q2, product.list.q3, product.list.q4]
    #     shipping_prices = [product.list.sp_q1,product.list.sp_q2,product.list.sp_q3,product.list.sp_q4]
    #     number_of_ranges(shipping_vals)
    #     puts("#{shipping_vals}<----------------------------------------------")
    #     puts("#{shipping_prices}<----------------------------------------------")
    #     @shipping_val=nil
    #     @ranges.times do |i|
    #       puts("#{self[:unit_price]}Precio unitario <= #{shipping_vals[i]} <---------------------------------------------")
    #       if shipping_vals[i] >= self[:unit_price]
    #         puts("Entró #{shipping_prices[i]}")
    #         @shipping_val = shipping_prices[i]
    #         puts("shipping_val #{shipping_val}")
    #       end
    #     end
    #     puts("#{shipping_val}<----------------------------------------------")
    #     if not(defined?(@shipping_val)).nil?
    #       puts("#{shipping_val}costo de envío <----------------------------------------------")
    #       return @shipping_val
    #     else
    #       puts("#{product.list.sp_p1}costo de envío primerito<----------------------------------------------")
    #       return product.list.sp_p1
    #     end
    #   else
    #     discount_vals= [product.list.p1,product.list.p2,product.list.p3,product.list.p4]
    #     shipping_prices = [product.list.sp_p1,product.list.sp_p2,product.list.sp_p3,product.list.sp_p4]
    #     number_of_ranges(discount_vals)
    #     puts("#{discount_vals}<----------------------------------------------")
    #     @ranges.times do |i|
    #       if shipping_vals[i] <= self[:unit_price]
    #         shipping_val = shipping_prices[i]
    #       end
    #     end
    #     if shipping_val =! nil
    #       return shipping_val
    #     else
    #       return product.list.sp_p1
    #     end
    #   end
    end
  end

  def product_discount
    if product.list.quantity == true
      self[:quantity]
    else
      self[:quantity]
    end
  end

  def promotion
    self[:discount]
  end

	def total_price
		unit_price * quantity - (unit_price * quantity)*self[:discount]
	end

  def number_of_ranges(discount_vals)
    @ranges=0
    discount_vals.each do |val|
      if val =! nil
        @ranges=@ranges+1
      end
    end
  end

	private

		def set_unit_price
			self[:unit_price] = unit_price
		end

		def set_total_price
			self[:total_price] = quantity * set_unit_price
		end

    def set_discount
      self[:discount] = product_discount
    end

    def set_shipping
      self[:shipping] = product_shipping
    end
end
