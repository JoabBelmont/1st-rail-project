class AddOrderReferenceToOrderable < ActiveRecord::Migration[7.1]
  def change
    add_column :orderables, :order_id, :integer
    add_foreign_key :orderables, :orders, column: :order_id, optional: true
  end
end
