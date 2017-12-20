class AddSupplierRefToCategories < ActiveRecord::Migration[5.1]
  def change
    add_reference :categories, :supplier, foreign_key: true
  end
end
