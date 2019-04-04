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

ActiveRecord::Schema.define(version: 2019_04_04_091251) do

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
