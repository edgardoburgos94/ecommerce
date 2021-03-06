# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  price           :integer
#  img_url         :string
#  img_url2        :string
#  img_url3        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  unique          :integer
#  p_day           :float
#  supplier_id     :integer
#  sub_category_id :integer
#  list_id         :integer
#  s1              :string
#  s2              :string
#  s3              :string
#  s4              :string
#  s5              :string
#  s6              :string
#  s7              :string
#  s8              :string
#  s9              :string
#  s10             :string
#  q1              :integer
#  q2              :integer
#  q3              :integer
#  q4              :integer
#  q5              :integer
#  q6              :integer
#  q7              :integer
#  q8              :integer
#  q9              :integer
#  q10             :integer
#  check_unique    :boolean
#  reference       :string
#
# Indexes
#
#  index_products_on_list_id          (list_id)
#  index_products_on_sub_category_id  (sub_category_id)
#  index_products_on_supplier_id      (supplier_id)
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
