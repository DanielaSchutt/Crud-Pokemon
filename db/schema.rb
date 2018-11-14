# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_14_111915) do

  create_table "fase2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fase3s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fraquezas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.float "peso"
    t.float "altura"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tipo_id"
    t.bigint "fase2_id"
    t.bigint "fase3_id"
    t.bigint "vantagem_id"
    t.bigint "fraqueza_id"
    t.index ["fase2_id"], name: "index_pokemons_on_fase2_id"
    t.index ["fase3_id"], name: "index_pokemons_on_fase3_id"
    t.index ["fraqueza_id"], name: "index_pokemons_on_fraqueza_id"
    t.index ["tipo_id"], name: "index_pokemons_on_tipo_id"
    t.index ["vantagem_id"], name: "index_pokemons_on_vantagem_id"
  end

  create_table "tipos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vantagems", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pokemons", "fase2s"
  add_foreign_key "pokemons", "fase3s"
  add_foreign_key "pokemons", "fraquezas"
  add_foreign_key "pokemons", "tipos"
  add_foreign_key "pokemons", "vantagems"
end
