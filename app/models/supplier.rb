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
#  profile_img            :string
#  cover_img              :string
#  full_name              :string
#  description            :text
#  cel                    :string
#  dir                    :string
#  country                :string
#  city                   :string
#  sales                  :integer
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
#  sq1                    :integer
#  sq2                    :integer
#  sq3                    :integer
#  sq4                    :integer
#  sp_q1                  :float
#  sp_q2                  :float
#  sp_q3                  :float
#  sp_q4                  :float
#  sp1                    :float
#  sp2                    :float
#  sp3                    :float
#  sp4                    :float
#  sp_p1                  :float
#  sp_p2                  :float
#  sp_p3                  :float
#  sp_p4                  :float
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
    permit(:sign_up, keys: [:full_name, :email, :password, :password_confirmation, :country, :city, :dir, :cel])
    permit(:account_update, keys: [:full_name, :email, :password, :password_confirmation, :country, :city, :dir, :cel, :profile_img, :cover_img])
  end
end
