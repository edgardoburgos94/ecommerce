class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.references :user, index: true, foreign_key: {on_delete: :cascade}
      t.references :supplier, index: true, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
