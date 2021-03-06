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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140307232510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "materials", force: true do |t|
    t.string   "category",                                  default: ""
    t.string   "description",                               default: ""
    t.string   "dimensions",                                default: ""
    t.string   "material",                                  default: ""
    t.string   "units",                                     default: "Each"
    t.decimal  "inventory",        precision: 10, scale: 2, default: 0.0
    t.decimal  "price",            precision: 10, scale: 2, default: 0.0
    t.integer  "minimum_purchase",                          default: 1
    t.integer  "package_count",                             default: 1
    t.decimal  "shipping_price",   precision: 10, scale: 2, default: 0.0
    t.string   "location"
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  create_table "services", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price",       precision: 10, scale: 2
    t.string   "provider"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "task_dependencies", force: true do |t|
    t.integer  "task_id"
    t.integer  "dependency_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "task_materials", force: true do |t|
    t.integer "task_id"
    t.integer "material_id"
    t.decimal "quantity",    precision: 10, scale: 2
  end

  create_table "task_services", force: true do |t|
    t.integer "task_id"
    t.integer "service_id"
    t.decimal "quantity",   precision: 10, scale: 2
  end

  create_table "tasks", force: true do |t|
    t.string   "name",                                         default: ""
    t.string   "description",                                  default: ""
    t.decimal  "hours_estimate",      precision: 10, scale: 2, default: 1.0
    t.string   "notes",                                        default: ""
    t.integer  "helpers_needed",                               default: 0
    t.integer  "liveaboard_priority",                          default: 5
    t.integer  "daysail_priority",                             default: 5
    t.integer  "cruising_priority",                            default: 5
    t.boolean  "completed",                                    default: false
    t.integer  "obsolete",                                     default: 0
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "task_materials", "materials", name: "task_materials_material_id_fk"
  add_foreign_key "task_materials", "tasks", name: "task_materials_task_id_fk"

  add_foreign_key "task_services", "services", name: "task_services_service_id_fk"
  add_foreign_key "task_services", "tasks", name: "task_services_task_id_fk"

end
