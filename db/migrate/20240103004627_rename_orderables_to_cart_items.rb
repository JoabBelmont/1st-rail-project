class RenameOrderablesToCartItems < ActiveRecord::Migration[7.1]
  def change
    rename_table :orderables, :cart_items
  end
end
