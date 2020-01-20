# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_20_041741) do

  create_table "works", force: :cascade do |t|
    t.string "nombre"
    t.string "tamano_de_papel"
    t.string "tipo_de_papel"
    t.string "numero_de_paginas_impresas"
    t.string "fecha"
    t.string "estado_de_impresion"
    t.string "usuario"
    t.string "numero_de_paginas_blanco_negro"
    t.string "numero_de_paginas_a_color"
    t.string "numero_de_copias_impresas"
    t.string "paginas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
