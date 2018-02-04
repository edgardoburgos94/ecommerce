# == Schema Information
#
# Table name: sub_categories
#
#  id          :integer          not null, primary key
#  title       :string
#  img_url     :string
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_sub_categories_on_category_id  (category_id)
#

require 'test_helper'

class SubCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
