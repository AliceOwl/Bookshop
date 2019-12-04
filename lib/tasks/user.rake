require 'csv'
namespace :user do
  desc "user_table"
  task seed_user: :environment do
    User.destroy_all
    CSV.foreach("lib/assets/user.csv", :headers => true) do |row|
      puts row.inspect
      User.create!(
        user_id: row[0].to_i,
        username: row[1],
        f_name: row[2],
        l_name: row[3],
        email: row[4],
        address: row[5],
        password: row[6],
        avatar: row[7],
        admin: row[8]
      )
    end
  end
end
