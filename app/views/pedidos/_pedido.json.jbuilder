json.extract! pedido, :id, :usuario_id, :fecha_pedido, :estado, :total, :metodo_pago, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
