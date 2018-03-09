# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  subtotal   :float
#  total      :float
#  tax        :float
#  shipping   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
  has_many :list_groups
  before_save :set_subtotal

	def subtotal
		# order_items.collect {|order_item| order_item.valid? ? (order_item.unit_price*order_item.quantity-order_item.unit_price*order_item.quantity*order_item.promotion) : 0}.sum
    100
	end

	private
		def set_subtotal
			self[:subtotal] = subtotal
		end
end
