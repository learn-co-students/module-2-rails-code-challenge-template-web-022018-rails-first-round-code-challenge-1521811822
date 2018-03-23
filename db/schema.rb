ActiveRecord::Schema.define(version: 20180323133525) do

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "superheroes", force: :cascade do |t|
    t.string   "name"
    t.string   "super_name"
    t.integer  "superpower_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "superpowers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
