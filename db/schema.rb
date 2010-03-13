# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100214002722) do

  create_table "citas", :force => true do |t|
    t.integer  "user_id"
    t.string   "asunto"
    t.date     "fecha"
    t.time     "hora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directorios", :force => true do |t|
    t.integer  "user_id"
    t.string   "nombre"
    t.string   "mail"
    t.integer  "fono"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "pass"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "direccion"
    t.string   "fono"
    t.string   "mail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_file_name"
    t.integer  "foto_file_size"
    t.string   "foto_content_type"
    t.string   "tipo",              :default => "usuario"
  end

end