class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :img_url
      t.string :img_url2
      t.string :img_url3


      t.timestamps
    end
  end
end
