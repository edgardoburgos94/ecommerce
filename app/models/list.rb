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
  belongs_to :supplier
  has_many :products, dependent: :delete_all
  has_many :list_groups, dependent: :delete_all

  validates :title, presence: true
  validate :quantity_cannot_be_less_than_previous_quantity
  validate :price_cannot_be_less_than_previous_price
  validate :discount_and_shipping_exist

  def quantity_cannot_be_less_than_previous_quantity
    error=false
    if q1.present? || q2.present? || q3.present? || q4.present?
      quantities = [q1,q2,q3,q4]
      3.times do |i|
        if (quantities[i].present?) && (quantities[i+1].present?)
          if quantities[i].to_i >= quantities[i+1].to_i
            error = true
          end
        end
        if ( not quantities[i].present?) && (quantities[i+1].present?)
          error = true
        end
      end
      if (error == true) then errors.add(:quantity, "Rango por cantidades mal organizado. Verifique que el siguente valor sea mayor al anterior") end
    end
  end

  def price_cannot_be_less_than_previous_price
    error=false
    if p1.present? || p2.present? || p3.present? || p4.present?
      prices = [p1,p2,p3,p4]
      3.times do |i|
        if (prices[i].present?) && (prices[i+1].present?)
          if prices[i].to_i >= prices[i+1].to_i
            error = true
          end
        end
        if ( not prices[i].present?) && (prices[i+1].present?)
          error = true
        end
      end
      if (error == true) then errors.add(:price, "Rango por precios mal organizado. Verifique que el siguente valor sea mayor al anterior") end
    end
  end

  def discount_and_shipping_exist
    if promotion && quantity
      if (q1.present?) && (not p_q1.present?) then errors.add(:promotion, "Verifique que para cada rango tiene su descuento") end
      if (q2.present?) && (not p_q2.present?) then errors.add(:promotion, "Verifique que para cada rango tiene su descuento") end
      if (q3.present?) && (not p_q3.present?) then errors.add(:promotion, "Verifique que para cada rango tiene su descuento") end
      if (q4.present?) && (not p_q4.present?) then errors.add(:promotion, "Verifique que para cada rango tiene su descuento") end
    end
    if promotion && price
      if (p1.present?) && (not p_p1.present?) then errors.add(:promotion, "Verifique que para cada rango tiene su descuento") end
      if (p2.present?) && (not p_p2.present?) then errors.add(:promotion, "Verifique que para cada rango tiene su descuento") end
      if (p3.present?) && (not p_p3.present?) then errors.add(:promotion, "Verifique que para cada rango tiene su descuento") end
      if (p4.present?) && (not p_p4.present?) then errors.add(:promotion, "Verifique que para cada rango tiene su descuento") end
    end
    if (not free_shipping) && quantity
      if (q1.present?) && (not sp_q1.present?) then errors.add(:free_shipping, "Verifique que para cada rango tiene su costo de envío") end
      if (q2.present?) && (not sp_q2.present?) then errors.add(:free_shipping, "Verifique que para cada rango tiene su costo de envío") end
      if (q3.present?) && (not sp_q3.present?) then errors.add(:free_shipping, "Verifique que para cada rango tiene su costo de envío") end
      if (q4.present?) && (not sp_q4.present?) then errors.add(:free_shipping, "Verifique que para cada rango tiene su costo de envío") end
    end
    if (not free_shipping) && price
      if (p1.present?) && (not sp_p1.present?) then errors.add(:free_shipping, "Verifique que para cada rango tiene su costo de envío") end
      if (p2.present?) && (not sp_p2.present?) then errors.add(:free_shipping, "Verifique que para cada rango tiene su costo de envío") end
      if (p3.present?) && (not sp_p3.present?) then errors.add(:free_shipping, "Verifique que para cada rango tiene su costo de envío") end
      if (p4.present?) && (not sp_p4.present?) then errors.add(:free_shipping, "Verifique que para cada rango tiene su costo de envío") end
    end

  end

end
