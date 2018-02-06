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
#  supplier_id     :integer
#  sub_category_id :integer
#
# Indexes
#
#  index_products_on_sub_category_id  (sub_category_id)
#  index_products_on_supplier_id      (supplier_id)
#

class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :sub_category
  has_many :order_items, dependent: :delete_all
  has_many :product_comments, dependent: :delete_all
end
