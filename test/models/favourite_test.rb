# == Schema Information
#
# Table name: favourites
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  supplier_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_favourites_on_supplier_id  (supplier_id)
#  index_favourites_on_user_id      (user_id)
#

require 'test_helper'

class FavouriteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
