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

ActiveRecord::Schema.define(:version => 20121216015247) do

  create_table "materials", :force => true do |t|
    t.string   "category"
    t.string   "description"
    t.string   "dimensions"
    t.string   "material"
    t.string   "units"
    t.decimal  "inventory",        :precision => 10, :scale => 2
    t.decimal  "price",            :precision => 10, :scale => 2
    t.integer  "minimum_purchase"
    t.integer  "package_count"
    t.decimal  "shipping_price",   :precision => 10, :scale => 2
    t.string   "location"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "project_materials", :force => true do |t|
    t.integer "project_id"
    t.integer "material_id"
    t.decimal "quantity",    :precision => 10, :scale => 2
  end

  create_table "project_services", :force => true do |t|
    t.integer "project_id"
    t.integer "service_id"
    t.decimal "quantity",   :precision => 10, :scale => 2
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "hours_estimate",      :precision => 10, :scale => 2
    t.string   "notes"
    t.integer  "helpers_needed"
    t.integer  "liveaboard_priority"
    t.integer  "daysail_priority"
    t.integer  "cruising_priority"
    t.boolean  "completed"
    t.boolean  "obsolete"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "projects_dependencies", :force => true do |t|
    t.integer "project_id"
    t.integer "dependency_id"
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price",       :precision => 10, :scale => 2
    t.string   "provider"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

end
