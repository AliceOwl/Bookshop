require 'csv'
namespace :book do
  desc "book_table"
    task seed_book: :environment do
      Book.destroy_all
      CSV.foreach("lib/assets/book.csv", :headers =>true) do |row|
        puts row.inspect
        Book.create!(
          book_id: row[0].to_i,
          title: row[1],
          author: row[2],
          avg_rating: row[3],
          isbn: row[4],
          language_code: row[5],
          num_page: row[6],
          rating_count: row[7],
          text_review_count: row[8],
          price: row[9]
        )
    end
  end
end
