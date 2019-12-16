class ShopsController < ApplicationController

  include Pagy::Backend
  
  def index
    @pagy, @books = pagy(Book.all, items: 10)
    search = params[:search]
    @books_search = Book.where('title like ?', "%#{search}%")
    @order_item = current_order.order_items.new

  end

  def show
    @book = Book.find(params[:id])
  end
end



