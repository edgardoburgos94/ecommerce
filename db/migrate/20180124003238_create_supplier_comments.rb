class CreateSupplierComments < ActiveRecord::Migration[5.1]
  def change
    create_table :supplier_comments do |t|
      t.text :body
      t.references :supplier, index: true, foreign_key: {on_delete: :cascade}
      t.references :user, index: true, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
