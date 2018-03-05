class AddProporionsAndShippingToSuppliers < ActiveRecord::Migration[5.1]
  def change
    add_column :suppliers, :state, :string
    add_column :suppliers, :phone, :string
    add_column :suppliers, :free_shipping, :boolean

    add_column :suppliers, :q1, :integer
    add_column :suppliers, :q2, :integer
    add_column :suppliers, :q3, :integer
    add_column :suppliers, :q4, :integer
    add_column :suppliers, :p_q1, :float
    add_column :suppliers, :p_q2, :float
    add_column :suppliers, :p_q3, :float
    add_column :suppliers, :p_q4, :float

    add_column :suppliers, :p1, :float
    add_column :suppliers, :p2, :float
    add_column :suppliers, :p3, :float
    add_column :suppliers, :p4, :float
    add_column :suppliers, :p_p1, :float
    add_column :suppliers, :p_p2, :float
    add_column :suppliers, :p_p3, :float
    add_column :suppliers, :p_p4, :float

    # add_column :suppliers, :sq1, :integer #Shipping quantity
    # add_column :suppliers, :sq2, :integer #Shipping quantity
    # add_column :suppliers, :sq3, :integer #Shipping quantity
    # add_column :suppliers, :sq4, :integer #Shipping quantity
    # add_column :suppliers, :sp_q1, :float #Shipping quantity price
    # add_column :suppliers, :sp_q2, :float #Shipping quantity price
    # add_column :suppliers, :sp_q3, :float #Shipping quantity price
    # add_column :suppliers, :sp_q4, :float #Shipping quantity price
    #
    # add_column :suppliers, :sp1, :float
    # add_column :suppliers, :sp2, :float
    # add_column :suppliers, :sp3, :float
    # add_column :suppliers, :sp4, :float
    # add_column :suppliers, :sp_p1, :float
    # add_column :suppliers, :sp_p2, :float
    # add_column :suppliers, :sp_p3, :float
    # add_column :suppliers, :sp_p4, :float

  end
end
