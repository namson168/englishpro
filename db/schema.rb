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

ActiveRecord::Schema.define(version: 20151120052134) do

  create_table "answers", force: :cascade do |t|
    t.string   "content"
    t.boolean  "correct"
    t.integer  "word_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "answers", ["word_id", "created_at"], name: "index_answers_on_word_id_and_created_at"
  add_index "answers", ["word_id"], name: "index_answers_on_word_id"

  create_table "friends", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.boolean  "accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "friends", ["friend_id"], name: "index_friends_on_friend_id"

  create_table "lessons", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "picture"
  end

  add_index "lessons", ["name"], name: "index_lessons_on_name", unique: true

  create_table "plans", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "act"
    t.integer  "how_many"
    t.date     "deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer  "test_id"
    t.integer  "word_id"
    t.integer  "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "results", ["answer_id", "created_at"], name: "index_results_on_answer_id_and_created_at"
  add_index "results", ["answer_id"], name: "index_results_on_answer_id"
  add_index "results", ["test_id", "created_at"], name: "index_results_on_test_id_and_created_at"
  add_index "results", ["test_id"], name: "index_results_on_test_id"
  add_index "results", ["word_id", "created_at"], name: "index_results_on_word_id_and_created_at"
  add_index "results", ["word_id"], name: "index_results_on_word_id"

  create_table "tests", force: :cascade do |t|
    t.integer  "point"
    t.integer  "user_id"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tests", ["lesson_id", "created_at"], name: "index_tests_on_lesson_id_and_created_at"
  add_index "tests", ["lesson_id"], name: "index_tests_on_lesson_id"
  add_index "tests", ["user_id", "created_at"], name: "index_tests_on_user_id_and_created_at"
  add_index "tests", ["user_id"], name: "index_tests_on_user_id"

  create_table "user_logs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "act"
    t.integer  "act_id"
    t.string   "status"
    t.string   "log_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "words", force: :cascade do |t|
    t.string   "content"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "words", ["lesson_id", "created_at"], name: "index_words_on_lesson_id_and_created_at"
  add_index "words", ["lesson_id"], name: "index_words_on_lesson_id"

end
