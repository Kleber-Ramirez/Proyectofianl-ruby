class CreateProductos < ActiveRecord::Migration[7.2]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.decimal :precio
      t.integer :cantidad
      t.timestamp :fecha_agregado

      t.timestamps
    end
  end
end
