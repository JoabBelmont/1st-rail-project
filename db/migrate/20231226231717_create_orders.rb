class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :status
      t.decimal :total
      t.string :email
      t.string :card_holder
      t.string :card_no
      t.string :credit_expiry
      t.string :credit_cvc
      t.string :billing_address
      t.string :billing_zip

      t.timestamps
    end
  end
end
