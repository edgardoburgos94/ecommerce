class RemoveShippingFromSuppliers < ActiveRecord::Migration[5.1]
  def change
    remove_column :suppliers, :sq1, :integer
    remove_column :suppliers, :sq2, :integer
    remove_column :suppliers, :sq3, :integer
    remove_column :suppliers, :sq4, :integer

    remove_column :suppliers, :sp_q1, :float
    remove_column :suppliers, :sp_q2, :float
    remove_column :suppliers, :sp_q3, :float
    remove_column :suppliers, :sp_q4, :float

    remove_column :suppliers, :sp1, :float
    remove_column :suppliers, :sp2, :float
    remove_column :suppliers, :sp3, :float
    remove_column :suppliers, :sp4, :float

    remove_column :suppliers, :sp_p1, :float
    remove_column :suppliers, :sp_p2, :float
    remove_column :suppliers, :sp_p3, :float
    remove_column :suppliers, :sp_p4, :float
  end
end
