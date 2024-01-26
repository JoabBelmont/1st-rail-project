class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :products, through: :order_items

  validates :email, presence: true
  validates :card_holder, presence: true, length: { maximum: 255 }
  validates :card_no, presence: true, format: { with: /\A\d{4}-\d{4}-\d{4}-\d{4}\z/ }
  validates :credit_expiry, presence: true, format: { with: /\A\d{2}\/\d{2}\z/ }
  validates :credit_cvc, presence: true, length: { is: 3 }, numericality: { only_integer: true }
  validates :billing_address, presence: true, length: { maximum: 255 }
  validates :billing_zip, presence: true, length: { is: 5 }, numericality: { only_integer: true }

  def total
    order_items.to_a.sum { |order_item| order_item.total }
  end
end
