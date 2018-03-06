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
#  state                  :string
#  phone                  :string
#  profile_img            :string
#  cover_img              :string
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
  has_many :lists, dependent: :delete_all


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def favourite_by?(user)
     favourites.exists?(user: user)
   end
end

class Supplier::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    sign_in_permit = [:full_name, :email, :password, :password_confirmation, :country, :state, :city, :dir, :cel, :profile_img, :cover_img]
    permit(:sign_up, keys: sign_in_permit)
    permit(:account_update, keys: sign_in_permit)
  end
end
