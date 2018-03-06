# == Schema Information
#
# Table name: lists
#
#  id            :integer          not null, primary key
#  title         :string
#  supplier_id   :integer
#  free_shipping :boolean
#  promotion     :boolean
#  quantity      :boolean
#  price         :boolean
#  q2            :integer
#  q1            :integer
#  q3            :integer
#  q4            :integer
#  p_q1          :float
#  p_q2          :float
#  p_q3          :float
#  p_q4          :float
#  p1            :float
#  p2            :float
#  p3            :float
#  p4            :float
#  p_p1          :float
#  p_p2          :float
#  p_p3          :float
#  p_p4          :float
#  sq1           :integer
#  sq2           :integer
#  sq3           :integer
#  sq4           :integer
#  sp_q1         :float
#  sp_q2         :float
#  sp_q3         :float
#  sp_q4         :float
#  sp1           :float
#  sp2           :float
#  sp3           :float
#  sp4           :float
#  sp_p1         :float
#  sp_p2         :float
#  sp_p3         :float
#  sp_p4         :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_lists_on_supplier_id  (supplier_id)
#

class List < ApplicationRecord
  has_many :products, dependent: :delete_all

end
