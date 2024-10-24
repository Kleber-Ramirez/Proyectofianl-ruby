class Producto < ApplicationRecord
    has_many :comentarios
    has_many :pedidos
  end
  