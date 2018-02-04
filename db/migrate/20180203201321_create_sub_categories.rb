class CreateSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_categories do |t|
      t.string :title
      t.string :img_url
      t.references :category, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
