class Usuario < ApplicationRecord
    has_many :pedidos
    has_many :comentarios
    has_many :direcciones
  end
  