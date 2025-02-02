# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_24_054914) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "fecha_creacion", precision: nil
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
    t.index ["nombre"], name: "index_categoria_on_nombre", unique: true
  end

  create_table "comentarios", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.bigint "producto_id", null: false
    t.text "contenido"
    t.integer "calificacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_comentarios_on_producto_id"
    t.index ["usuario_id"], name: "index_comentarios_on_usuario_id"
  end

  create_table "direccions", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.string "direccion_linea1"
    t.string "direccion_linea2"
    t.string "ciudad"
    t.string "codigo_postal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_direccions_on_usuario_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.datetime "fecha_pedido", precision: nil
    t.string "estado"
    t.decimal "total"
    t.string "metodo_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_pedidos_on_usuario_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.decimal "precio"
    t.integer "cantidad"
    t.datetime "fecha_agregado", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "contraseña"
    t.datetime "fecha_creacion", precision: nil
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
  end

  add_foreign_key "comentarios", "productos"
  add_foreign_key "comentarios", "usuarios"
  add_foreign_key "direccions", "usuarios"
  add_foreign_key "pedidos", "usuarios"
end
