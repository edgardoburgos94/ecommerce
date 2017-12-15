class Product < ApplicationRecord
  belongs_to :category
  has_many :sizes, dependent: :destroy
end
