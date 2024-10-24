json.extract! direccion, :id, :usuario_id, :direccion_linea1, :direccion_linea2, :ciudad, :codigo_postal, :created_at, :updated_at
json.url direccion_url(direccion, format: :json)
