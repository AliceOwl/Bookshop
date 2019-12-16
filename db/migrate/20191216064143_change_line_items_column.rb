class ChangeLineItemsColumn < ActiveRecord::Migration[6.0]
  def change
    change_table :line_items do |t|
      t.remove(:product_id)
      
    end
  end
end
