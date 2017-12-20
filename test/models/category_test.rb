# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  title       :string
#  img_url     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  supplier_id :integer
#
# Indexes
#
#  index_categories_on_supplier_id  (supplier_id)
#

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
