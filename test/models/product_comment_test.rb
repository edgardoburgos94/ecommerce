# == Schema Information
#
# Table name: product_comments
#
#  id         :integer          not null, primary key
#  body       :text
#  product_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_product_comments_on_product_id  (product_id)
#  index_product_comments_on_user_id     (user_id)
#

require 'test_helper'

class ProductCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
