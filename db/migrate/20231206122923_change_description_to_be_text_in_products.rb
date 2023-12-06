class ChangeDescriptionToBeTextInProducts < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :description, :text, :limit => 200
  end
end
