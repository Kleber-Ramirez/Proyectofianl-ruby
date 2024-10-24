json.extract! usuario, :id, :nombre, :email, :contraseña, :fecha_creacion, :activo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
