class ChartsController < ApplicationController
    def best_reviews  
        render json: Book.group(:avg_rating).sum(:price)
    end


        def index
  
          rating1 = Book.where('avg_rating > 3.0').count
      
          @rating = { 'Rating > 3.0' => rating1}
        end

end