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
   
    bookselected = params[:BookSelected]
    puts "................................"
    puts bookselected 
    @selectedbook = Book.where('book_id = ?', bookselected)
    @isbn = []
    @selectedbook.each do |book|    
        @isbn << book.isbn 
    end



end


end
