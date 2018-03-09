class AddListGroupReferenceToOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :order_items, :list_group, index: true, foreign_key: {on_delete: :cascade}
  end
end
