class Order < ApplicationRecord
  belongs_to :user
  has_many :orderables
  has_many :products, through: :orderables
end
