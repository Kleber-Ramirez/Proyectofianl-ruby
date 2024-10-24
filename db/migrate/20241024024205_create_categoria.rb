class CreateCategoria < ActiveRecord::Migration[7.2]
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.text :descripcion
      t.timestamp :fecha_creacion
      t.boolean :activo
      t.integer :parent_id  # Agrega esta línea para la relación con la categoría padre

      t.timestamps
    end

    add_index :categoria, :nombre, unique: true
    add_index :categoria, :parent_id  # Opcional, mejora el rendimiento de las consultas
  end
end
