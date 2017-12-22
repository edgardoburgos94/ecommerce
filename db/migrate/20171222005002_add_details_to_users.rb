class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :cel, :string
    add_column :users, :dir, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
    add_column :users, :purchases, :integer
  end
end
