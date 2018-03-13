class RemoveSizerFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :xs, :integer
    remove_column :products, :s, :integer
    remove_column :products, :m, :integer
    remove_column :products, :l, :integer
    remove_column :products, :xl, :integer
    remove_column :products, :xxl, :integer
    remove_column :products, :q1, :integer
    remove_column :products, :q2, :float
    remove_column :products, :q3, :float
    remove_column :products, :q4, :float
    remove_column :products, :p_registered_user, :float
    remove_column :products, :p_q1, :float
    remove_column :products, :p_q2, :float
    remove_column :products, :p_q3, :float
    remove_column :products, :p_q4, :float
  end
end
