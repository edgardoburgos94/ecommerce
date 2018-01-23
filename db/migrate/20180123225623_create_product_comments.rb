class CreateProductComments < ActiveRecord::Migration[5.1]
  def change
    create_table :product_comments do |t|
      t.text :body
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
