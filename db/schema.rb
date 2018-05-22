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

ActiveRecord::Schema.define(version: 2018_05_22_122227) do

  create_table "trn_kadai_kanris", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "pj_id", null: false
    t.integer "hojn_id", null: false
    t.integer "menu_id", null: false
    t.integer "kadai_s_id", null: false
    t.string "kadai_title", null: false
    t.string "kadai_psner", null: false
    t.text "kadai_contents", null: false
    t.string "kadai_person", null: false
    t.datetime "kadai_limit", null: false
    t.integer "kadai_phase", null: false
    t.integer "kadai_impt", null: false
    t.integer "kadai_status", null: false
    t.integer "kadai_cgr", null: false
    t.string "kadai_tenp"
    t.text "kadai_try"
    t.text "kadai_try2"
    t.text "kadai_try3"
    t.datetime "kadai_try_d"
    t.datetime "kadai_try2_d"
    t.datetime "kadai_try3_d"
    t.string "kadai_try_w"
    t.string "kadai_try2_w"
    t.string "kadai_try3_w"
    t.string "kadai_try_p"
    t.string "kadai_try2_p"
    t.string "kadai_try3_p"
    t.string "kadai_cmt_psner"
    t.text "kadai_cmt_ents"
    t.string "kadai_cmt_notifier"
    t.datetime "kadai_inst_ymd"
    t.datetime "kadai_updt_ymd"
    t.datetime "kadai_del_ymd"
    t.bigint "kadai_del_flag", null: false
    t.string "kadai_updt_id", limit: 256
    t.string "kadai_updt_s_end", limit: 256
    t.string "kadai_updt_t_end", limit: 256
  end

end
