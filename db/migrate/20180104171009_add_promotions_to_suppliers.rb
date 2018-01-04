class AddPromotionsToSuppliers < ActiveRecord::Migration[5.1]
  def change
    add_column :suppliers, :p_ure, :float
    add_column :suppliers, :p_dia, :float
    add_column :suppliers, :p_cmin, :float
    add_column :suppliers, :p_cmay, :float
    add_column :suppliers, :cant_may, :float
  end
end
