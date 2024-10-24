class Categorium < ApplicationRecord
  has_many :productos
  belongs_to :parent, class_name: "Categorium", optional: true
end
