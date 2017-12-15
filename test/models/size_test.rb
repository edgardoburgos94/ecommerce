# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  product_id :integer
#  xs         :integer
#  s          :integer
#  m          :integer
#  l          :integer
#  xl         :integer
#  xxl        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sizes_on_product_id  (product_id)
#

require 'test_helper'

class SizeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
