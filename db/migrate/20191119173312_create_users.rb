class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :username
      t.string :f_name
      t.string :l_name
      t.text :email
      t.text :address
      t.text :password
      t.text :avatar
      t.boolean :admin

      t.timestamps
    end
  end
end
