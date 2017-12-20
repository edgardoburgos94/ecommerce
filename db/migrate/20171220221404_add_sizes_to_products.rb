class AddSizesToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :xs, :integer
    add_column :products, :s, :integer
    add_column :products, :m, :integer
    add_column :products, :l, :integer
    add_column :products, :xl, :integer
    add_column :products, :xxl, :integer
  end
end
