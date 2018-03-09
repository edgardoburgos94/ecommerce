class CreateListGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :list_groups do |t|
      t.integer :quantity
      t.float :subtotal
      t.float :shipping
      t.float :discount
      t.float :total
      t.references :order, index: true, foreign_key: true

      t.timestamps
    end
  end
end
