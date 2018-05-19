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

ActiveRecord::Schema.define(version: 2018_05_19_165116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "admin_passport"
  end

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_cohorts_on_slug", unique: true
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_courses_on_slug", unique: true
  end

  create_table "student_cohorts", force: :cascade do |t|
    t.integer "student_id"
    t.integer "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
    t.bigint "student_id"
    t.string "slug"
    t.string "student_passport"
    t.index ["slug"], name: "index_students_on_slug", unique: true
    t.index ["student_id"], name: "index_students_on_student_id"
  end

  create_table "teacher_cohorts", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.integer "salary"
    t.string "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
    t.bigint "teacher_id"
    t.string "slug"
    t.string "teacher_passport"
    t.index ["slug"], name: "index_teachers_on_slug", unique: true
    t.index ["teacher_id"], name: "index_teachers_on_teacher_id"
  end

  add_foreign_key "students", "students"
  add_foreign_key "teachers", "teachers"
end
