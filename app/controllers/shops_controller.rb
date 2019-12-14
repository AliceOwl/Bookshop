class ShopsController < ApplicationController
  include Pagy::Backend
  
  def index
    @pagy, @books = pagy(Book.all, items: 10)

    @order_item = current_order.order_items.new
  end

  def show
    @book = Book.find(params[:id])
  end
end
