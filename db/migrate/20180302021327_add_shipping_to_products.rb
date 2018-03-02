class AddShippingToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :sq1, :integer
    add_column :products, :sq2, :integer
    add_column :products, :sq3, :integer
    add_column :products, :sq4, :integer
    add_column :products, :sp_q1, :float
    add_column :products, :sp_q2, :float
    add_column :products, :sp_q3, :float
    add_column :products, :sp_q4, :float

    add_column :products, :sp1, :float
    add_column :products, :sp2, :float
    add_column :products, :sp3, :float
    add_column :products, :sp4, :float
    add_column :products, :sp_p1, :float
    add_column :products, :sp_p2, :float
    add_column :products, :sp_p3, :float
    add_column :products, :sp_p4, :float
  end
end
