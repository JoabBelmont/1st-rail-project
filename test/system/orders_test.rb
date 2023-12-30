require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Billing address", with: @order.billing_address
    fill_in "Billing zip", with: @order.billing_zip
    fill_in "Card holder", with: @order.card_holder
    fill_in "Card no", with: @order.card_no
    fill_in "Credit cvc", with: @order.credit_cvc
    fill_in "Credit expiry", with: @order.credit_expiry
    fill_in "Email", with: @order.email
    fill_in "Full name", with: @order.full_name
    fill_in "Status", with: @order.status
    fill_in "Total", with: @order.total
    fill_in "User", with: @order.user_id
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Billing address", with: @order.billing_address
    fill_in "Billing zip", with: @order.billing_zip
    fill_in "Card holder", with: @order.card_holder
    fill_in "Card no", with: @order.card_no
    fill_in "Credit cvc", with: @order.credit_cvc
    fill_in "Credit expiry", with: @order.credit_expiry
    fill_in "Email", with: @order.email
    fill_in "Full name", with: @order.full_name
    fill_in "Status", with: @order.status
    fill_in "Total", with: @order.total
    fill_in "User", with: @order.user_id
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
