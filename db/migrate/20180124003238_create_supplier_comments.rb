class CreateSupplierComments < ActiveRecord::Migration[5.1]
  def change
    create_table :supplier_comments do |t|
      t.text :body
      t.references :supplier, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
