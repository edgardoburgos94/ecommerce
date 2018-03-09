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
  before_save :set_shipping
  before_save :set_order_total

  before_update :set_subtotal, :set_shipping, :set_order_total

	def order_subtotal
		list_groups.collect {|list_group| list_group.valid? ? (list_group.subtotal) : 0}.sum
	end

  def order_shipping
		list_groups.collect {|list_group| list_group.valid? ? (list_group.shipping) : 0}.sum
	end

  def order_total
    list_groups.collect {|list_group| list_group.valid? ? (list_group.total ) : 0}.sum
  end

	private
		def set_subtotal
			self[:subtotal] = order_subtotal
		end
    def set_shipping
			self[:shipping] = order_shipping
		end
    def set_order_total
      puts("Order subtotal#{self[:subtotal]}")
      puts("Order shipping#{self[:shipping]}")

			self[:total] = order_total
		end
end
