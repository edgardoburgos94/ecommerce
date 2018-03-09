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

  validate :quantity_can_not_be_greater_than_disponiblitity

  before_save :set_unit_price
  before_save :set_total_price
	before_save :set_discount
  before_save :set_shipping
  before_update :set_discount, :set_shipping

  def quantity_can_not_be_greater_than_disponiblitity
    puts("Entró a la validación")
    puts("Catidad seleccionada: #{self[:quantity]}")
    puts("Tamaño seleccionado: #{self[:size].split('|')[0].to_i}")

    if self[:quantity] > self[:size].split('|')[0].to_i
      puts("Tenemos un ERRORRRR <<<<<<<<<<<<<<<<<<<<<<<<<<<<<")
      errors.add(:quantity, "La cantidad seleccionada excede a la cantidad disponible")
    end

  end

	def unit_price
		if persisted?
			self[:unit_price]
		else
			product.price
		end
	end

  def product_shipping
    list_group.shipping
  end

  def product_discount
    list_group.discount
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


    def set_discount
      self[:discount] = product_discount
    end

    def set_shipping
      self[:shipping] = product_shipping
    end

    def set_total_price
      self[:total_price] = (self[:quantity]*self[:unit_price])  - (self[:unit_price]  * quantity)*self[:discount]/100
    end
end
