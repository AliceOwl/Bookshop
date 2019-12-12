class ShopsController < ApplicationController
  def index
    @books = Book.all

    @order_item = current_order.order_items.new
  end

  def show
    @book = Book.where(:id => params[:id])
  end
end
