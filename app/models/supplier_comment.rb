# == Schema Information
#
# Table name: supplier_comments
#
#  id          :integer          not null, primary key
#  body        :text
#  supplier_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_supplier_comments_on_supplier_id  (supplier_id)
#  index_supplier_comments_on_user_id      (user_id)
#

class SupplierComment < ApplicationRecord
  belongs_to :supplier
  belongs_to :user
end
