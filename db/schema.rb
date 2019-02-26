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

ActiveRecord::Schema.define(version: 2019_02_06_162420) do

  create_table "events", force: :cascade do |t|
    t.datetime "event_date"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_songs", force: :cascade do |t|
    t.integer "event_id"
    t.integer "song_id"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_events_songs_on_event_id"
    t.index ["song_id"], name: "index_events_songs_on_song_id"
  end

  create_table "performances", force: :cascade do |t|
    t.integer "order"
    t.string "singer"
    t.integer "status", default: 0
    t.integer "event_id"
    t.integer "events_song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_performances_on_event_id"
    t.index ["events_song_id"], name: "index_performances_on_events_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.string "tab_url"
    t.string "audio_url"
    t.string "video_url"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
