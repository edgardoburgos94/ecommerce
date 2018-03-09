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

end
