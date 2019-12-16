class ChangeLineItemsReference < ActiveRecord::Migration[6.0]
  def change
  
      change_table :line_items do |t|
        t.remove_foreign_key :products
        t.references :books, null: true, foreign_key: true
      end
    
  end
end
