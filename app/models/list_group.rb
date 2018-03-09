# == Schema Information
#
# Table name: list_groups
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  subtotal   :float
#  shipping   :float
#  discount   :float
#  total      :float
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_id    :integer
#
# Indexes
#
#  index_list_groups_on_list_id   (list_id)
#  index_list_groups_on_order_id  (order_id)
#

class ListGroup < ApplicationRecord
  belongs_to :order
  belongs_to :list
  has_many :order_items

  before_save :set_subtotal
  before_save :set_shipping
  before_save :set_discount
  before_save :set_quantity
  before_save :set_total

  before_update :set_subtotal, :set_shipping, :set_discount, :set_quantity, :set_total

  def list_sub_total
    order_items.collect {|order_item| order_item.valid? ? (order_item.unit_price * order_item.quantity) : 0}.sum
  end

  def list_quantity
    order_items.collect {|order_item| order_item.valid? ? (order_item.quantity) : 0}.sum
  end

  def list_discount
    if list.promotion == true
      self[:quantity]
    else
      0
    end
  end

  def list_shipping
    if list.free_shipping == true
      1
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


  private
    def set_subtotal
      self[:subtotal] = list_sub_total
    end
    def set_quantity
      self[:quantity] = list_quantity
    end
    def set_shipping
      self[:shipping] = list_shipping
    end
    def set_discount
      self[:discount] = list_discount
    end
    def set_total
      # puts("cantidad: #{self[:quantity]} <-------------------")
      # puts("subtotal: #{self[:subtotal]} <-------------------")
      # puts("envío: #{self[:shipping]} <-------------------")
      # puts("Descuento: #{self[:discount]} <-------------------")
      # puts("Holaaa")


      self[:total] = (self[:subtotal] - self[:subtotal]*self[:discount]/100)+self[:shipping]
    end

end
