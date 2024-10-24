class CreatePedidos < ActiveRecord::Migration[7.2]
  def change
    create_table :pedidos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.timestamp :fecha_pedido
      t.string :estado
      t.decimal :total
      t.string :metodo_pago

      t.timestamps
    end
  end
end
