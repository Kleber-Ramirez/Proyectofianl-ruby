json.extract! producto, :id, :nombre, :descripcion, :precio, :cantidad, :fecha_agregado, :created_at, :updated_at
json.url producto_url(producto, format: :json)
