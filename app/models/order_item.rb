# == Schema Information
#
# Table name: order_items
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  order_id    :integer
#  unit_price  :float
#  quantity    :integer
#  total_price :float
#  size        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  discount    :float
#

class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  before_save :set_unit_price
	before_save :set_total_price

	def unit_price
		if persisted?
			self[:unit_price]
		else
			product.price
		end
	end

  def promotion
    self[:discount]
  end

	def total_price
		unit_price * quantity - (unit_price * quantity)*self[:discount]
	end

	private

		def set_unit_price
			self[:unit_price] = unit_price
		end

		def set_total_price
			self[:total_price] = quantity * set_unit_price
		end
end
