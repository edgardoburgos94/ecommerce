class CreateSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :sizes do |t|
      t.belongs_to :product, index: true
      t.integer :xs
      t.integer :s
      t.integer :m
      t.integer :l
      t.integer :xl
      t.integer :xxl



      t.timestamps
    end
  end
end
