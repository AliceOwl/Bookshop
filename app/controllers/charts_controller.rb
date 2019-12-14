class ChartsController < ApplicationController
    def best_reviews  
        render json: Book.group(:avg_rating).sum(:price)
    end
end