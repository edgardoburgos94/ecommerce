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
  before_save :set_quantity
  before_save :set_shipping
  before_save :set_discount
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
      0
    else
      if list.quantity == true
        shipping_vals = [list.q1, list.q2, list.q3, list.q4]
        shipping_prices = [list.sp_q1,list.sp_q2,list.sp_q3,list.sp_q4]
        ranges = number_of_ranges(shipping_vals)
        puts("#{ranges}<----------------------------------------------")
        puts("Precios de envpio: #{shipping_prices}<----------------------------------------------")
        puts("Valores de envío: #{shipping_vals}<----------------------------------------------")

        ranges
        shipping_val=nil
        (ranges).times do |i|
          puts(i)
          puts("Comparación cantidad con rangos: #{self[:quantity]} >= #{shipping_vals[i]} <---------------------------------------------")
          if shipping_vals[i] <= list_quantity
            puts("Entró #{shipping_prices[i]}")
            shipping_val = shipping_prices[i]
            puts("shipping_val #{shipping_val}")
          end
        end
        puts("#{shipping_val.class}<----------------------------------------------")
        if shipping_val.class == Float
    #       puts("#{shipping_val}costo de envío <----------------------------------------------")
          shipping_val
        else
    #       puts("#{product.list.sp_p1}costo de envío primerito<----------------------------------------------")
          list.sp_q1
        end
      else
        shipping_vals = [list.p1, list.p2, list.p3, list.p4]
        shipping_prices = [list.sp_p1,list.sp_p2,list.sp_p3,list.sp_p4]
        ranges = number_of_ranges(shipping_vals)
        puts("#{ranges}<----------------------------------------------")
        puts("Precios de envpio: #{shipping_prices}<----------------------------------------------")
        puts("Valores de envío: #{shipping_vals}<----------------------------------------------")

        ranges
        shipping_val=nil
        (ranges).times do |i|
          puts(i)
          puts("Comparación cantidad con rangos: #{self[:quantity]} >= #{shipping_vals[i]} <---------------------------------------------")
          if shipping_vals[i] <= list_quantity
            puts("Entró #{shipping_prices[i]}")
            shipping_val = shipping_prices[i]
            puts("shipping_val #{shipping_val}")
          end
        end
        puts("#{shipping_val.class}<----------------------------------------------")
        if shipping_val.class == Float
    #       puts("#{shipping_val}costo de envío <----------------------------------------------")
          shipping_val
        else
    #       puts("#{product.list.sp_p1}costo de envío primerito<----------------------------------------------")
          list.sp_p1
        end
      end
    end
  end

  def number_of_ranges(vals)
    ranges=0
    puts("Valores de envío #{vals}")
    vals.each do |val|
      puts("Valor de envío #{val.class}")
      if val.class == Fixnum
        puts("Valor de envío #{val}")
        puts(ranges)
        ranges=ranges+1
      end
    end
    ranges
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
      self[:total] = (self[:subtotal] - self[:subtotal]*self[:discount]/100)+self[:shipping]
    end

end
