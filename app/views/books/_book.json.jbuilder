json.extract! book, :id, :bookid, :title, :author, :avg_rating, :isbn, :language_code, :num_page, :rating_count, :text_review_count, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
