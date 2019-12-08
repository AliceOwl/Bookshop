class HomeController < ApplicationController

def index
    @books = Book.all
    @product = Book.order("RANDOM()").limit(16);

    @product.each do |book| 
    end
end

def product
    @books = Book.all
    @product = Book.order("RANDOM()").limit(16);

    @product.each do |book| 
    end
end

def productdetail

end


end
