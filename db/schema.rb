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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 201011252340000) do

  create_table "minutes", :force => true do |t|
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "minutes", ["time"], :name => "index_minutes_on_time", :unique => true

  create_table "pictures", :force => true do |t|
    t.integer  "minute_id"
    t.integer  "blames"
    t.integer  "top_x"
    t.integer  "top_y"
    t.integer  "bottom_x"
    t.integer  "bottom_y"
    t.string   "uploader"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

end
