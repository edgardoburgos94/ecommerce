# == Schema Information
#
# Table name: users
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
#  purchases              :integer
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :product_comments, dependent: :delete_all
  has_many :supplier_comments, dependent: :delete_all

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

class User::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:full_name, :email, :password, :password_confirmation, :country, :city, :dir, :cel, :purchases])
    permit(:account_update, keys: [:full_name, :email, :password, :password_confirmation, :country, :city, :dir, :cel, :purchases])
  end
end
