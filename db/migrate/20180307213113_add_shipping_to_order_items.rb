class AddShippingToOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :shipping, :float
  end
end
