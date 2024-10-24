class CreateUsuarios < ActiveRecord::Migration[7.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.string :contraseña
      t.timestamp :fecha_creacion
      t.boolean :activo

      t.timestamps
    end
    add_index :usuarios, :email, unique: true
  end
end
