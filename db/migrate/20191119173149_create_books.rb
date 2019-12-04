class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :book_id
      t.text :title
      t.text :author
      t.float :avg_rating
      t.string :isbn
      t.string :language_code
      t.integer :num_page
      t.integer :rating_count
      t.integer :text_review_count
      t.float :price

      t.timestamps
    end
  end
end
