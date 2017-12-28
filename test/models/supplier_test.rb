# == Schema Information
#
# Table name: suppliers
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  full_name              :string
#  cel                    :string
#  dir                    :string
#  country                :string
#  city                   :string
#  sales                  :integer
#
# Indexes
#
#  index_suppliers_on_email                 (email) UNIQUE
#  index_suppliers_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'test_helper'

class SupplierTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
