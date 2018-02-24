# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  title              :string
#  description        :text
#  price              :integer
#  img_url            :string
#  img_url2           :string
#  img_url3           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  xs                 :integer
#  s                  :integer
#  m                  :integer
#  l                  :integer
#  xl                 :integer
#  xxl                :integer
#  unique             :integer
#  p_registered_user  :float
#  p_day              :float
#  p_q1               :float
#  p_q2               :float
#  p_q3               :float
#  p_q4               :float
#  q1                 :integer
#  q2                 :integer
#  q3                 :integer
#  q4                 :integer
#  supplier_id        :integer
#  sub_category_id    :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#
# Indexes
#
#  index_products_on_sub_category_id  (sub_category_id)
#  index_products_on_supplier_id      (supplier_id)
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
