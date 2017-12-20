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

class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  belongs_to :supplier
end
