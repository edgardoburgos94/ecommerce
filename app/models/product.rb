# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  category_id :integer
#  title       :string
#  description :text
#  price       :integer
#  img_url     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  xs          :integer
#  s           :integer
#  m           :integer
#  l           :integer
#  xl          :integer
#  xxl         :integer
#  supplier_id :integer
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#

class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :category
  has_many :order_items
  has_many :product_comments
end
