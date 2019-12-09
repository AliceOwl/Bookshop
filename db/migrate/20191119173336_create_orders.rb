class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer "order_id"
      t.datetime "dateoforder"
      t.integer "user_id"
      t.integer "bookid"
      t.integer "quantity"
      t.float "subtotal"
      t.float "total_price"
      t.timestamps
    end
  end
end
