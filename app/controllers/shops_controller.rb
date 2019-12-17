class ShopsController < ApplicationController
include CurrentCart
before_action :set_cart
  include Pagy::Backend
  
  def index
    @books = Book.order(:title)
    @pagy, @books = pagy(Book.all, items: 10)
    search = params[:search]
    @books_search = Book.where('title like ?', "%#{search}%")
  end

  def show
    @book = Book.find(params[:id])
  end
end



