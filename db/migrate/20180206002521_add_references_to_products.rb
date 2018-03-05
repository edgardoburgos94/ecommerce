class AddReferencesToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :supplier, index: true, foreign_key: {on_delete: :cascade}
    add_reference :products, :sub_category, index: true, foreign_key: {on_delete: :cascade}
  end
end
