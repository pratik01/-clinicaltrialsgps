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

ActiveRecord::Schema.define(version: 20160408131306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clinical_studies", force: :cascade do |t|
    t.string   "download_date"
    t.string   "link_text"
    t.string   "url"
    t.string   "brief_title"
    t.string   "official_title"
    t.string   "agency"
    t.string   "agency_class"
    t.string   "source"
    t.string   "authority"
    t.text     "brief_summary"
    t.text     "detailed_description"
    t.string   "overall_status"
    t.string   "start_date"
    t.string   "phase"
    t.string   "study_type"
    t.string   "study_design"
    t.string   "condition"
    t.string   "intervention_type"
    t.string   "intervention_name"
    t.string   "last_name"
    t.string   "role"
    t.string   "affiliation"
    t.string   "verification_date"
    t.string   "lastchanged_date"
    t.string   "firstreceived_date"
    t.string   "responsible_party_type"
    t.string   "keyword_1"
    t.string   "keyword_2"
    t.string   "is_fda_regulated"
    t.string   "has_expanded_access"
    t.string   "mesh_term"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
