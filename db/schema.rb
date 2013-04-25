# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130212210859) do

  create_table "aimagens", :force => true do |t|
    t.string   "direccion"
    t.integer  "galeria"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "capacitacions", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.date     "fechainicio"
    t.date     "fechafinal"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "asunto"
    t.text     "mensaje"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "eventos", :force => true do |t|
    t.string   "titulo"
    t.text     "detalle"
    t.date     "fechai"
    t.date     "fechaf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "galeria", :force => true do |t|
    t.string   "nombre"
    t.date     "fecha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "miembros", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.date     "fechanac"
    t.string   "sexo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ministerios", :force => true do |t|
    t.string   "nombre"
    t.integer  "encargado"
    t.text     "mision"
    t.text     "vision"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nivels", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "noticia", :force => true do |t|
    t.string   "titulo"
    t.text     "detalle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pastors", :force => true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "cargo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "predicas", :force => true do |t|
    t.string   "titulo"
    t.text     "mensaje"
    t.string   "autor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "proyectos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "recursos", :force => true do |t|
    t.string   "nombre"
    t.string   "tipodocumento"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "nick"
    t.string   "nivel"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
