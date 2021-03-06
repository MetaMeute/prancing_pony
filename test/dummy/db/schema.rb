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

ActiveRecord::Schema.define(:version => 20111108222304) do

  create_table "prancing_pony_stocks", :force => true do |t|
    t.string   "name",       :null => false
    t.decimal  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prancing_pony_stocks", ["name"], :name => "index_prancing_pony_stocks_on_name"

  create_table "users", :force => true do |t|
    t.string   "nick"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "drunk",                                     :default => 0,   :null => false
    t.decimal  "debit",      :precision => 10, :scale => 2, :default => 0.0, :null => false
  end

end
