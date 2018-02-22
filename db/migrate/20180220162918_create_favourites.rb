class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.references :user, index: true, foreign_key: true
      t.references :supplier, index: true, foreign_key: true

      t.timestamps
    end
  end
end