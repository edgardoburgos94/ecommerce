class CreateSupplierComments < ActiveRecord::Migration[5.1]
  def change
    create_table :supplier_comments do |t|
      t.text :body
      t.references :supplier, foreign_key: {on_delete: :cascade}
      t.references :user, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
