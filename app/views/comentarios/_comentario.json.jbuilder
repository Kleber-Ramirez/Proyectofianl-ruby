json.extract! comentario, :id, :usuario_id, :producto_id, :contenido, :calificacion, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
