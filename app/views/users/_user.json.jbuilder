json.extract! user, :id, :user_id, :f_name, :l_name, :email, :address, :password, :avatar, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
