class Orderable < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order, optional: true

  def total
    product.price * quantity
  end
end
