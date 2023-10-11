# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_06_071140) do
  create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "apples", force: :cascade do |t|
    t.string "variety"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course"
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_courses_on_student_id"
  end

  create_table "courses_students", id: false, force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "student_id", null: false
  end

  create_table "customers_products", id: false, force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "product_id", null: false
  end

  create_table "emp_account_histories", force: :cascade do |t|
    t.integer "emp_accounts_id"
    t.integer "ratings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emp_accounts_id"], name: "index_emp_account_histories_on_emp_accounts_id"
  end

  create_table "emp_accounts", force: :cascade do |t|
    t.integer "employee_id"
    t.string "account_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_emp_accounts_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "number"
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_enrollments_on_student_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "tagline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_items_on_name"
  end

  create_table "news", force: :cascade do |t|
    t.string "headline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "terms_of_service"
    t.string "email"
    t.string "email_confirmation"
    t.integer "points"
    t.integer "games_played"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.integer "mobile"
    t.integer "telephone"
    t.integer "people_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["people_id"], name: "index_phone_numbers_on_people_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "price"
  end

  create_table "products1s", force: :cascade do |t|
    t.string "name"
    t.string "part_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sourceable_type"
    t.integer "sourceable_id"
  end

  create_table "student_projects", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "submission_date"
    t.index ["project_id"], name: "index_student_projects_on_project_id"
    t.index ["student_id"], name: "index_student_projects_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "lastname"
    t.string "check_creation"
    t.integer "salary"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "type"
    t.string "color"
    t.decimal "price", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "comments", "articles"
  add_foreign_key "courses", "students"
  add_foreign_key "enrollments", "students"
  add_foreign_key "phone_numbers", "people", column: "people_id"
  add_foreign_key "student_projects", "projects"
  add_foreign_key "student_projects", "students"
end
