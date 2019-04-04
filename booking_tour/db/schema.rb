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

ActiveRecord::Schema.define(version: 2019_04_04_153138) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "booktour_details", force: :cascade do |t|
    t.integer "idBooktourDetails"
    t.integer "idTour"
    t.date "DateDay"
    t.integer "Tour_Price"
    t.integer "Mem_Num"
    t.text "Requests"
    t.integer "idUsers"
    t.integer "Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer "idCategory"
    t.string "Tour_Types"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "idComments"
    t.integer "idTour"
    t.string "Name"
    t.string "Comments_Details"
    t.boolean "Like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "idFeedback"
    t.integer "idUser"
    t.text "Feedbacks_Title"
    t.text "FeedBacks_Details"
    t.integer "Rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.integer "idGallery"
    t.string "LinkIMG"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tours", force: :cascade do |t|
    t.integer "idTour"
    t.integer "idGallery"
    t.integer "idCategory"
    t.integer "idComment"
    t.integer "idBooktourDetails"
    t.string "Tour_Review"
    t.text "Tour_Details"
    t.integer "Tour_Price"
    t.date "Tour_DayStart"
    t.date "Tour_DayEnd"
    t.text "Tour_PlaceStart"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "idUser"
    t.string "Username"
    t.string "Password"
    t.string "Name"
    t.boolean "Sex"
    t.string "Address"
    t.text "Email"
    t.integer "PhoneNum"
    t.text "PassQuestions"
    t.text "PassAnswer"
    t.integer "Roles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
