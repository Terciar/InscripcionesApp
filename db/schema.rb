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

ActiveRecord::Schema.define(version: 20151031144821) do

  create_table "groups", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "sexo"
    t.integer  "quota"
    t.integer  "extended_quota"
    t.integer  "initial_age"
    t.integer  "maximun_age"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.string   "colonist_name"
    t.integer  "colonist_age"
    t.date     "colonist_birtday"
    t.integer  "colonist_dni"
    t.string   "colonist_address"
    t.string   "colonist_telephone"
    t.string   "colonist_email"
    t.string   "colonist_school_name"
    t.integer  "colonist_grade"
    t.string   "colonist_school_address"
    t.string   "colonist_school_phone"
    t.string   "colonist_medical_insurance"
    t.string   "colonist_trauma"
    t.string   "colonist_surgery"
    t.boolean  "colonist_illness_asthma"
    t.string   "colonist_illness_allergy"
    t.boolean  "colonist_illness_heart_failure"
    t.boolean  "colonist_illness_diabetes"
    t.string   "colonist_illness_other"
    t.boolean  "colonist_medical_observation"
    t.boolean  "colonist_doctor"
    t.boolean  "colonist_know_swim"
    t.string   "colonist_swim_school"
    t.string   "colonist_swim_leave_reasons"
    t.string   "how_know_us"
    t.string   "parents_relation"
    t.string   "father_name"
    t.integer  "father_age"
    t.boolean  "father_lives"
    t.boolean  "father_visit"
    t.string   "father_email"
    t.string   "father_profession"
    t.string   "father_work_phone"
    t.string   "mother_name"
    t.integer  "mother_age"
    t.boolean  "mother_lives"
    t.boolean  "mother_visit"
    t.string   "mother_email"
    t.string   "mother_profession"
    t.string   "mother_work_phone"
    t.string   "who_register"
    t.boolean  "i_attest"
    t.integer  "group_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "registrations", ["group_id"], name: "index_registrations_on_group_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "nombre"
    t.integer  "tipo",                   default: 2,    null: false
    t.boolean  "habilitado",             default: true
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
