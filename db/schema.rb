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

ActiveRecord::Schema.define(version: 2019_07_12_184127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.bigint "library_id"
    t.text "TitleOfTheBook"
    t.text "author"
    t.string "cipher", limit: 100
    t.string "publishing_house"
    t.integer "TheYearOfPublishing"
    t.decimal "price", precision: 8, scale: 2
    t.date "receipt_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_books_on_library_id"
  end

  create_table "collaborators", force: :cascade do |t|
    t.bigint "library_id"
    t.string "name", limit: 100
    t.string "surname", limit: 100
    t.string "patronymic", limit: 100
    t.date "birthday"
    t.date "date_of_employment"
    t.string "post"
    t.string "education", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_collaborators_on_library_id"
  end

  create_table "courses", force: :cascade do |t|
    t.bigint "semester_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_courses_on_semester_id"
  end

  create_table "deliveries", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "subscriber_id"
    t.date "date_delivery"
    t.date "date_return"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_deliveries_on_book_id"
    t.index ["subscriber_id"], name: "index_deliveries_on_subscriber_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "number", limit: 100
    t.text "name"
    t.text "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string "name"
    t.string "fullname"
    t.boolean "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscribers", force: :cascade do |t|
    t.bigint "library_id"
    t.integer "ticket_number"
    t.string "surname", limit: 100
    t.string "name", limit: 100
    t.string "patronymic", limit: 100
    t.text "adress"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_subscribers_on_library_id"
  end

  add_foreign_key "books", "libraries"
  add_foreign_key "collaborators", "libraries"
  add_foreign_key "courses", "semesters"
  add_foreign_key "deliveries", "books"
  add_foreign_key "deliveries", "subscribers"
  add_foreign_key "subscribers", "libraries"
end
