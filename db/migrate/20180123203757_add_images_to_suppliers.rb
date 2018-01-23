class AddImagesToSuppliers < ActiveRecord::Migration[5.1]
  def change
    add_column :suppliers, :profile_img, :string
    add_column :suppliers, :cover_img, :string
  end
end
