class RemoveOrderReferenceFromOrderItem < ActiveRecord::Migration[5.1]
  def change
    remove_column :order_items, :order_id, :integer
  end
end
