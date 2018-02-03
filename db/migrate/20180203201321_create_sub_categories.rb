class CreateSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_categories do |t|
      t.string :title
      t.string :img_url
      t.reference :catecogy, foreign_key: true

      t.timestamps
    end
  end
end
