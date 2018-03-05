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
#  description            :text
#  cel                    :string
#  dir                    :string
#  country                :string
#  city                   :string
#  sales                  :integer
#  profile_img            :string
#  cover_img              :string
#  state                  :string
#  phone                  :string
#  free_shipping          :boolean
#  q1                     :integer
#  q2                     :integer
#  q3                     :integer
#  q4                     :integer
#  p_q1                   :float
#  p_q2                   :float
#  p_q3                   :float
#  p_q4                   :float
#  p1                     :float
#  p2                     :float
#  p3                     :float
#  p4                     :float
#  p_p1                   :float
#  p_p2                   :float
#  p_p3                   :float
#  p_p4                   :float
#
# Indexes
#
#  index_suppliers_on_email                 (email) UNIQUE
#  index_suppliers_on_reset_password_token  (reset_password_token) UNIQUE
#

class Supplier < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :products, dependent: :delete_all
  has_many :favourites, dependent: :delete_all
  has_many :users, through: :favourites


  has_many :supplier_comments, dependent: :delete_all

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def favourite_by?(user)
     favourites.exists?(user: user)
   end
end

class Supplier::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    sign_in_permit = [:full_name, :email, :password, :password_confirmation, :country, :state, :city, :dir, :cel, :q1, :q2, :q3, :q4, :p_q1, :p_q2, :p_q3, :p_q4, :p1, :p2, :p3, :p4, :p_p1, :p_p2, :p_p3, :p_p4, :sq1, :sq2, :sq3, :sq4, :sp_q1, :sp_q2, :sp_q3, :sp_q4, :sp1, :sp2, :sp3, :sp4, :sp_p1, :sp_p2, :sp_p3, :sp_p4, :profile_img, :cover_img]
    permit(:sign_up, keys: sign_in_permit)
    permit(:account_update, keys: sign_in_permit)
  end
end
