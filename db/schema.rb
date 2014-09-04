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

ActiveRecord::Schema.define(version: 20140903182335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consults", force: true do |t|
    t.text     "complain_of_patient"
    t.text     "diagnostic_of_doctor"
    t.text     "prescription_of_doctor"
    t.string   "drugs_delivered"
    t.date     "drugs_delivered_on"
    t.string   "drugs_delivered_by"
    t.integer  "complain_id"
    t.string   "complain_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutes", force: true do |t|
    t.string   "name"
    t.string   "visiting_address"
    t.string   "email_address"
    t.string   "operational_mode"
    t.string   "city"
    t.string   "phone"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "birth_date"
    t.string   "email_address"
    t.string   "resident"
    t.string   "phone"
    t.string   "password"
    t.string   "password_salt"
    t.string   "confirm_password"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personnels", force: true do |t|
    t.string   "specialist"
    t.string   "title"
    t.string   "name"
    t.date     "start_date"
    t.string   "email_address"
    t.string   "duty_station"
    t.string   "phone"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
