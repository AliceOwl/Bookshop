class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :quantity
      t.float :total_price
      t.datetime :dateoforder
      t.integer :user_id
      t.integer :bookid

      t.timestamps
    end
  end
end
