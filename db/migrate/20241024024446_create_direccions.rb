class CreateDireccions < ActiveRecord::Migration[7.2]
  def change
    create_table :direccions do |t|
      t.references :usuario, null: false, foreign_key: true
      t.string :direccion_linea1
      t.string :direccion_linea2
      t.string :ciudad
      t.string :codigo_postal

      t.timestamps
    end
  end
end
