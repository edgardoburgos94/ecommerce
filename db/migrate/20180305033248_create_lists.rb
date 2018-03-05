class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.references :supplier, index: true, foreign_key: {on_delete: :cascade}

      # Descuento por cantidad
      t.integer :q2
      t.integer :q1
      t.integer :q3
      t.integer :q4
      t.float :p_q1
      t.float :p_q2
      t.float :p_q3
      t.float :p_q4

      # Descuento por precio
      t.float :p1
      t.float :p2
      t.float :p3
      t.float :p4
      t.float :p_p1
      t.float :p_p2
      t.float :p_p3
      t.float :p_p4

      # Envío por cantidad
      t.integer :sq1
      t.integer :sq2
      t.integer :sq3
      t.integer :sq4
      t.float :sp_q1
      t.float :sp_q2
      t.float :sp_q3
      t.float :sp_q4

      # Envío por precio
      t.float :sp1
      t.float :sp2
      t.float :sp3
      t.float :sp4
      t.float :sp_p1
      t.float :sp_p2
      t.float :sp_p3
      t.float :sp_p4

      t.timestamps
    end
  end
end
