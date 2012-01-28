# encoding: UTF-8
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


ActiveRecord::Schema.define(:version => 20120128010518) do

  create_table "commodities", :force => true do |t|
    t.string   "nameEnglish"
    t.string   "nameSwahili"
    t.string   "quality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "region"
    t.string   "district"
    t.string   "ward"
    t.string   "town"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", :force => true do |t|
    t.string   "name"
    t.string   "swahili"
  end
  
  create_table "prices", :force => true do |t|
    t.integer  "unitPriceLow"
    t.integer  "unitPriceHigh"
    t.integer  "deliverPriceLow"
    t.integer  "deliverPriceHigh"
    t.integer  "wholesalePriceLow"
    t.integer  "wholesalePriceHigh"
    t.integer  "retailPriceLow"
    t.integer  "retailPriceHigh"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
