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

ActiveRecord::Schema.define(version: 2021_11_24_215806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "partidas", force: :cascade do |t|
    t.integer "pontuacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
ActiveRecord::Schema.define(version: 2021_11_10_194009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "perguntas", force: :cascade do |t|
    t.string "enunciado"
    t.string "alternativa_a"
    t.string "alternativa_b"
    t.string "alternativa_c"
    t.string "alternativa_d"
    t.string "alternativa_correta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email"
    t.string "senha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "bestscore"
  end

end
