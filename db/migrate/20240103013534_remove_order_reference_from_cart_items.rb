class RemoveOrderReferenceFromCartItems < ActiveRecord::Migration[7.1]
  def change
    remove_reference :cart_items, :order, foreign_key: true
  end
end
