class AddReferenceFieldToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :reference, :string
  end
end
