class HomeController < ApplicationController
  def index
    @cart = current_user&.cart || current_user&.build_cart
  end
end
