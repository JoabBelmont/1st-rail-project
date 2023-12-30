json.extract! order, :id, :user_id, :status, :total, :full_name, :email, :card_holder, :card_no, :credit_expiry, :credit_cvc, :billing_address, :billing_zip, :created_at, :updated_at
json.url order_url(order, format: :json)
