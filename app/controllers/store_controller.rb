class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    increment_count # increment session variable
  end

  def increment_count
    session[:counter] ||= 0
    session[:counter] += 1
  end
end
