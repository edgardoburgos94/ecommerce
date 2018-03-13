class AddSizesAndQuantitiesToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :s1, :string
    add_column :products, :s2, :string
    add_column :products, :s3, :string
    add_column :products, :s4, :string
    add_column :products, :s5, :string
    add_column :products, :s6, :string
    add_column :products, :s7, :string
    add_column :products, :s8, :string
    add_column :products, :s9, :string
    add_column :products, :s10, :string
    add_column :products, :q1, :integer
    add_column :products, :q2, :integer
    add_column :products, :q3, :integer
    add_column :products, :q4, :integer
    add_column :products, :q5, :integer
    add_column :products, :q6, :integer
    add_column :products, :q7, :integer
    add_column :products, :q8, :integer
    add_column :products, :q9, :integer
    add_column :products, :q10, :integer
    add_column :products, :check_unique, :boolean
  end
end
