json.extract! order, :id, :order_id, :quantity, :total_price, :dateoforder, :user_id, :bookid, :created_at, :updated_at
json.url order_url(order, format: :json)
