class ApplicationController < ActionController::Base
  before_action :initialize_cart
  before_action :set_render_cart

  def initialize_cart
    if current_user
      @cart = current_user.cart || current_user.build_cart
      save_cart
    else
      handle_no_user
    end
  end

  private

  def save_cart
    if @cart.save
      session[:cart_id] = @cart.id
    else
      handle_cart_save_failure
    end
  end

  def handle_no_user
    puts 'No current user found'
    # Handle this scenario, perhaps redirect to login or perform other actions
  end

  def handle_cart_save_failure
    puts 'Failed to save the cart'
    puts @cart.errors.full_messages.join(', ')
    # You may choose to handle this differently (redirect, render, or notify user)
  end

  def set_render_cart
    @render_cart = @cart&.orderables&.present?
  end
end
