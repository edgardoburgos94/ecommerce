class AddDetailsToSuppliers < ActiveRecord::Migration[5.1]
  def change
    add_column :suppliers, :full_name, :string
    add_column :suppliers, :description, :text
    add_column :suppliers, :cel, :string
    add_column :suppliers, :dir, :string
    add_column :suppliers, :country, :string
    add_column :suppliers, :city, :string
    add_column :suppliers, :sales, :integer
  end
end
