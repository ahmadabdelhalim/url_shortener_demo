# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_12_182008) do

  create_table "url_shortener_shortened_urls", force: :cascade do |t|
    t.text "full_link", null: false
    t.string "shortened_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["full_link"], name: "index_url_shortener_shortened_urls_on_full_link"
    t.index ["shortened_link"], name: "index_url_shortener_shortened_urls_on_shortened_link", unique: true
  end

end
