class AddPromotionToOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :discount, :float
  end
end
