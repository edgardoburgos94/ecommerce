class RemoveSupplierIdFromCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :supplier_id, :integer
  end
end
