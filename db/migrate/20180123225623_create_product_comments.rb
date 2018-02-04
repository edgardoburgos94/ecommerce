class CreateProductComments < ActiveRecord::Migration[5.1]
  def change
    create_table :product_comments do |t|
      t.text :body
      t.references :product, foreign_key: {on_delete: :cascade}
      t.references :user, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
