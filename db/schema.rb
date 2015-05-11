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

ActiveRecord::Schema.define(version: 20150511155515) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "isbn"
    t.boolean  "physical"
    t.boolean  "electronical"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", force: true do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.boolean  "physical"
    t.datetime "loandate"
    t.datetime "loanreturn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "loans", ["book_id"], name: "index_loans_on_book_id"
  add_index "loans", ["user_id"], name: "index_loans_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wishes", force: true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wishes", ["book_id"], name: "index_wishes_on_book_id"
  add_index "wishes", ["user_id"], name: "index_wishes_on_user_id"

end
