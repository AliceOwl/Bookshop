class RenameOrdersEmaiToEmail < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :emai, :email
  end
end
