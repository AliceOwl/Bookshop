class ChangeLineItemsBook < ActiveRecord::Migration[6.0]
  change_table :line_items do |t|
    t.remove(:books_id)
    t.references :book, null: true, foreign_key: true
    
  end
end
