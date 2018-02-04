class AddPromotionsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :p_registered_user, :float
    add_column :products, :p_day, :float
    add_column :products, :p_q1, :float
    add_column :products, :p_q2, :float
    add_column :products, :p_q3, :float
    add_column :products, :p_q4, :float

    add_column :products, :q1, :integer
    add_column :products, :q2, :integer
    add_column :products, :q3, :integer
    add_column :products, :q4, :integer

  end
end
