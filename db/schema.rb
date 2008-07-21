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

ActiveRecord::Schema.define(:version => 20080721063055) do

  create_table "ciudades", :force => true do |t|
    t.string   "nombre",                            :null => false
    t.integer  "departamento_id",     :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo",                            :null => false
    t.string   "codigo_departamento",               :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string   "nombre",     :limit => 150, :null => false
    t.string   "direccion",  :limit => 150, :null => false
    t.string   "telefono_1", :limit => 15,  :null => false
    t.string   "telefono_2", :limit => 15
    t.string   "fax",        :limit => 15
    t.string   "email",      :limit => 100, :null => false
    t.integer  "ciudad_id",  :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departamentos", :force => true do |t|
    t.string   "nombre",                   :null => false
    t.integer  "pais_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo",                   :null => false
  end

  create_table "detalles_pedidos", :force => true do |t|
    t.datetime "fecha_entrada",               :null => false
    t.text     "observaciones",               :null => false
    t.integer  "pedido_id",     :limit => 11, :null => false
    t.integer  "ejemplar_id",   :limit => 11, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ejemplares", :force => true do |t|
    t.datetime "fecha_compra",                                                 :null => false
    t.integer  "vida_util_anhos", :limit => 11
    t.decimal  "costo_compra",                  :precision => 11, :scale => 2, :null => false
    t.decimal  "costo_dia",                     :precision => 11, :scale => 2, :null => false
    t.text     "descripcion",                                                  :null => false
    t.string   "estado",                                                       :null => false
    t.string   "disponibilidad",                                               :null => false
    t.integer  "herramienta_id",  :limit => 11,                                :null => false
    t.integer  "fabricante_id",   :limit => 11,                                :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo",          :limit => 40,                                :null => false
  end

  create_table "fabricantes", :force => true do |t|
    t.string   "nombre",      :limit => 100, :null => false
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "herramientas", :force => true do |t|
    t.string   "nombre",                    :null => false
    t.string   "referencia",  :limit => 40, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "descripcion",               :null => false
  end

  create_table "obras", :force => true do |t|
    t.string   "nombre",                     :null => false
    t.text     "descripcion",                :null => false
    t.string   "direccion",                  :null => false
    t.string   "estado",                     :null => false
    t.datetime "fecha_inicio",               :null => false
    t.datetime "fecha_fin",                  :null => false
    t.integer  "ciudad_id",    :limit => 11, :null => false
    t.integer  "usuario_id",   :limit => 11
    t.integer  "cliente_id",   :limit => 11, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paises", :force => true do |t|
    t.string   "nombre",     :null => false
    t.string   "iso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedidos", :force => true do |t|
    t.datetime "fecha_pedido",               :null => false
    t.integer  "obra_id",      :limit => 11, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perfiles", :force => true do |t|
    t.string   "nombre",      :null => false
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perfiles_privilegios", :id => false, :force => true do |t|
    t.integer "privilegio_id", :limit => 11
    t.integer "perfil_id",     :limit => 11
  end

  create_table "privilegios", :force => true do |t|
    t.string  "nombre",                                   :null => false
    t.string  "nombre_menu",                              :null => false
    t.text    "descripcion"
    t.string  "controller",                               :null => false
    t.string  "action",                                   :null => false
    t.boolean "visible_menu",                             :null => false
    t.integer "nivel_menu",   :limit => 2, :default => 2, :null => false
    t.integer "orden_menu",   :limit => 2,                :null => false
  end

  create_table "tipos_doc", :force => true do |t|
    t.string   "nombre",      :limit => 50, :null => false
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombres",       :limit => 60,  :null => false
    t.string   "apellidos",     :limit => 60,  :null => false
    t.string   "documento",     :limit => 40,  :null => false
    t.string   "direccion",     :limit => 100, :null => false
    t.string   "telefono_1",    :limit => 15,  :null => false
    t.string   "telefono_2",    :limit => 15
    t.string   "movil",         :limit => 15
    t.string   "email",         :limit => 60,  :null => false
    t.string   "username",      :limit => 20,  :null => false
    t.integer  "tipo_doc_id",   :limit => 11
    t.integer  "ciudad_id",     :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_salt"
    t.string   "password_hash"
    t.integer  "perfil_id",     :limit => 11,  :null => false
  end

end
