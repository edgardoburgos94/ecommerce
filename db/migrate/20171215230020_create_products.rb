class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.belongs_to :category, index: true
      t.string :title
      t.text :description
      t.integer :price
      t.string :img_url



      t.timestamps
    end
  end
end
