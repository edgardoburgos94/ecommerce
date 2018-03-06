class AddListIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :list, indext: true, foreign_key: {on_delete: :cascade}
  end
end
