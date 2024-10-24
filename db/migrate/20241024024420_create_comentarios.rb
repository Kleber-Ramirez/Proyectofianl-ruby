class CreateComentarios < ActiveRecord::Migration[7.2]
  def change
    create_table :comentarios do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true
      t.text :contenido
      t.integer :calificacion

      t.timestamps
    end
  end
end
