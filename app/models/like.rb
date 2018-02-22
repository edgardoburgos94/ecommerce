# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  product_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_likes_on_product_id  (product_id)
#  index_likes_on_user_id     (user_id)
#

class Like < ApplicationRecord
  belongs_to :product
  belongs_to :user
end
