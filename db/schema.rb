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

ActiveRecord::Schema.define(version: 20150204165635) do

  create_table "anmeldungs", force: :cascade do |t|
    t.string   "identnummer"
    t.string   "fz_brief_nr"
    t.string   "amtliches_kennzeichen1"
    t.string   "amtliches_kennzeichen2"
    t.string   "neues_kennzeichen1"
    t.string   "neues_kennzeichen2"
    t.boolean  "feinstaubplakette"
    t.date     "saison_von"
    t.date     "saison_bis"
    t.string   "evb_nr"
    t.text     "kva_notiz"
    t.text     "tsp_notiz"
    t.boolean  "versand_art"
    t.integer  "kunde_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "kundes", force: :cascade do |t|
    t.string   "gruppe"
    t.string   "anrede"
    t.string   "nachname"
    t.string   "geburtsname"
    t.string   "vorname"
    t.date     "geburtsdatum"
    t.string   "geburtsort"
    t.string   "adresse"
    t.string   "plz"
    t.string   "stadt"
    t.string   "telefonnummer"
    t.boolean  "tsp_versicherungskunde"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
