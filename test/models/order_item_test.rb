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

require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
