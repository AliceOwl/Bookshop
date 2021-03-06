class OrderItemsController < ApplicationController



    def create
        @order = current_order
        @order_item = @order.order_items.new(order_params)
        @order.save
        session[:order_id] = @order.id
    end 

    private

    def order_params
        params.require(:order_item).permit(:book_id, :quantity)
    end

    def index
        @order = current_order

    end

end
