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

ActiveRecord::Schema.define(version: 2019_12_23_120202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_answers", force: :cascade do |t|
    t.bigint "artist_survey_id"
    t.bigint "artist_survey_answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_survey_answer_id"], name: "index_artist_answers_on_artist_survey_answer_id"
    t.index ["artist_survey_id"], name: "index_artist_answers_on_artist_survey_id"
  end

  create_table "artist_survey_answers", force: :cascade do |t|
    t.text "text"
    t.bigint "artist_survey_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_survey_question_id"], name: "index_artist_survey_answers_on_artist_survey_question_id"
  end

  create_table "artist_survey_questions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artist_surveys", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_artist_surveys_on_user_id"
  end

  create_table "photo_answers", force: :cascade do |t|
    t.bigint "photo_survey_id"
    t.bigint "photo_survey_answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_survey_answer_id"], name: "index_photo_answers_on_photo_survey_answer_id"
    t.index ["photo_survey_id"], name: "index_photo_answers_on_photo_survey_id"
  end

  create_table "photo_survey_answers", force: :cascade do |t|
    t.text "text"
    t.bigint "photo_survey_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_survey_question_id"], name: "index_photo_survey_answers_on_photo_survey_question_id"
  end

  create_table "photo_survey_questions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photo_surveys", force: :cascade do |t|
    t.date "date"
    t.bigint "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_photo_surveys_on_photo_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "shooting_date"
    t.string "place"
    t.date "publication_month"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "address"
    t.string "city"
    t.integer "zip"
    t.integer "rib"
    t.string "avatar"
    t.string "sign"
    t.string "license"
    t.string "telepilot_declaration"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "artist_answers", "artist_survey_answers"
  add_foreign_key "artist_answers", "artist_surveys"
  add_foreign_key "artist_survey_answers", "artist_survey_questions"
  add_foreign_key "artist_surveys", "users"
  add_foreign_key "photo_answers", "photo_survey_answers"
  add_foreign_key "photo_answers", "photo_surveys"
  add_foreign_key "photo_survey_answers", "photo_survey_questions"
  add_foreign_key "photo_surveys", "photos"
  add_foreign_key "photos", "users"
end
