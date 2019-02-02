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

ActiveRecord::Schema.define(version: 20190201181347) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "titulo"
    t.text "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calificacions", force: :cascade do |t|
    t.float "nota"
    t.integer "estudiante_id"
    t.integer "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_calificacions_on_curso_id"
    t.index ["estudiante_id"], name: "index_calificacions_on_estudiante_id"
  end

  create_table "cursos", id: false, force: :cascade do |t|
    t.string "id_curso"
    t.string "nombre"
    t.integer "duracion"
    t.integer "materium_id"
    t.integer "profesor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["materium_id"], name: "index_cursos_on_materium_id"
    t.index ["profesor_id"], name: "index_cursos_on_profesor_id"
  end

  create_table "estudiantes", primary_key: "cedula", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nombres"
    t.string "apellidos"
    t.string "fecha_nac"
    t.string "domicilio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_estudiantes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_estudiantes_on_reset_password_token", unique: true
  end

  create_table "facturas", force: :cascade do |t|
    t.string "descripcion"
    t.string "fecha_pago"
    t.integer "pago_id"
    t.integer "estudiante_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estudiante_id"], name: "index_facturas_on_estudiante_id"
    t.index ["pago_id"], name: "index_facturas_on_pago_id"
  end

  create_table "inscripcions", force: :cascade do |t|
    t.integer "estudiante_id"
    t.integer "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_inscripcions_on_curso_id"
    t.index ["estudiante_id"], name: "index_inscripcions_on_estudiante_id"
  end

  create_table "materia", id: false, force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.string "tipo"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesors", id: false, force: :cascade do |t|
    t.string "cedula"
    t.string "nombres"
    t.string "apellidos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
