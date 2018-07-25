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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180725125530) do

  create_table "accessories", force: :cascade do |t|
    t.string   "acc_title"
    t.string   "acc_link"
    t.text     "acc_description"
    t.string   "acc_main_img"
    t.string   "acc_sub_img_01"
    t.string   "acc_sub_img_02"
    t.string   "acc_sub_img_03"
    t.string   "acc_sub_img_04"
    t.string   "acc_sub_img_05"
    t.string   "acc_sub_img_06"
    t.string   "acc_brand"
    t.string   "acc_offer_price"
    t.string   "acc_before_price"
    t.string   "acc_sale"
    t.string   "acc_option_01"
    t.string   "acc_option_02"
    t.string   "acc_option_03"
    t.string   "acc_option_04"
    t.string   "acc_option_05"
    t.string   "acc_option_06"
    t.string   "acc_option_07"
    t.string   "acc_option_08"
    t.string   "acc_option_09"
    t.string   "acc_option_10"
    t.string   "acc_spare_01"
    t.string   "acc_spare_02"
    t.string   "acc_spare_03"
    t.string   "acc_spare_04"
    t.string   "acc_spare_05"
    t.text     "acc_spare_06"
    t.text     "acc_spare_07"
    t.text     "acc_spare_08"
    t.text     "acc_spare_09"
    t.text     "acc_spare_10"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
  end

  create_table "bags", force: :cascade do |t|
    t.string   "bag_title"
    t.string   "bag_link"
    t.text     "bag_description"
    t.string   "bag_main_img"
    t.string   "bag_sub_img_01"
    t.string   "bag_sub_img_02"
    t.string   "bag_sub_img_03"
    t.string   "bag_sub_img_04"
    t.string   "bag_sub_img_05"
    t.string   "bag_sub_img_06"
    t.string   "bag_brand"
    t.string   "bag_offer_price"
    t.string   "bag_before_price"
    t.string   "bag_sale"
    t.string   "bag_option_01"
    t.string   "bag_option_02"
    t.string   "bag_option_03"
    t.string   "bag_option_04"
    t.string   "bag_option_05"
    t.string   "bag_option_06"
    t.string   "bag_option_07"
    t.string   "bag_option_08"
    t.string   "bag_option_09"
    t.string   "bag_option_10"
    t.string   "bag_spare_01"
    t.string   "bag_spare_02"
    t.string   "bag_spare_03"
    t.string   "bag_spare_04"
    t.string   "bag_spare_05"
    t.text     "bag_spare_06"
    t.text     "bag_spare_07"
    t.text     "bag_spare_08"
    t.text     "bag_spare_09"
    t.text     "bag_spare_10"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "blog_title"
    t.string   "blog_link"
    t.string   "blog_main_img"
    t.string   "blog_date"
    t.text     "blog_description"
    t.string   "blog_spare_01"
    t.string   "blog_spare_02"
    t.string   "blog_spare_03"
    t.string   "blog_spare_04"
    t.string   "blog_spare_05"
    t.text     "blog_spare_06"
    t.text     "blog_spare_07"
    t.text     "blog_spare_08"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clothes", force: :cascade do |t|
    t.string   "clothes_title"
    t.string   "clothes_link"
    t.text     "clothes_description"
    t.string   "clothes_main_img"
    t.string   "clothes_sub_img_01"
    t.string   "clothes_sub_img_02"
    t.string   "clothes_sub_img_03"
    t.string   "clothes_sub_img_04"
    t.string   "clothes_sub_img_05"
    t.string   "clothes_sub_img_06"
    t.string   "clothes_brand"
    t.string   "clothes_offer_price"
    t.string   "clothes_before_price"
    t.string   "clothes_sale"
    t.string   "clothes_option_01"
    t.string   "clothes_option_02"
    t.string   "clothes_option_03"
    t.string   "clothes_option_04"
    t.string   "clothes_option_05"
    t.string   "clothes_option_06"
    t.string   "clothes_option_07"
    t.string   "clothes_option_08"
    t.string   "clothes_option_09"
    t.string   "clothes_option_10"
    t.string   "clothes_spare_01"
    t.string   "clothes_spare_02"
    t.string   "clothes_spare_03"
    t.string   "clothes_spare_04"
    t.string   "clothes_spare_05"
    t.text     "clothes_spare_06"
    t.text     "clothes_spare_07"
    t.text     "clothes_spare_08"
    t.text     "clothes_spare_09"
    t.text     "clothes_spare_10"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
  end

  create_table "codes", force: :cascade do |t|
    t.string   "discount_title"
    t.string   "discount_category"
    t.string   "discount_image"
    t.string   "discount_code"
    t.string   "discount_date"
    t.string   "discount_sale"
    t.string   "discount_source"
    t.string   "discount_link_01"
    t.string   "discount_link_02"
    t.text     "discount_offer"
    t.string   "discount_amazon"
    t.text     "discount_amazon_card"
    t.text     "discount_used"
    t.string   "discount_used_link"
    t.text     "discount_coupon"
    t.string   "discount_spare_01"
    t.string   "discount_spare_02"
    t.string   "discount_spare_03"
    t.text     "discount_spare_04"
    t.text     "discount_spare_05"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string   "eb_title"
    t.string   "eb_min_price"
    t.string   "eb_max_price"
    t.string   "eb_free_sh"
    t.string   "eb_free_rt"
    t.string   "eb_free_both"
    t.string   "eb_spare_01"
    t.string   "eb_spare_02"
    t.string   "eb_spare_03"
    t.string   "eb_spare_04"
    t.string   "eb_spare_05"
    t.string   "eb_spare_06"
    t.string   "eb_spare_07"
    t.text     "eb_spare_08"
    t.text     "eb_spare_09"
    t.text     "eb_spare_00"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "ebays", force: :cascade do |t|
    t.string   "ebay_title"
    t.string   "min_price"
    t.string   "max_price"
    t.string   "shipping_free"
    t.string   "retrun_free"
    t.string   "both_free"
    t.string   "ebay_option_01"
    t.string   "ebay_option_02"
    t.string   "ebay_option_03"
    t.string   "ebay_option_04"
    t.string   "ebay_option_05"
    t.string   "ebay_option_06"
    t.string   "ebay_option_07"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ecommerces", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "image_main"
    t.string   "image_01"
    t.string   "image_02"
    t.string   "image_03"
    t.string   "image_04"
    t.string   "image_05"
    t.string   "image_06"
    t.string   "intro"
    t.string   "sources"
    t.float    "price_before"
    t.float    "price_after"
    t.string   "site_link"
    t.string   "site_link_uk"
    t.string   "site_link_ca"
    t.string   "site_link_jp"
    t.string   "youtube_link_01"
    t.string   "youtube_link_02"
    t.string   "postive_review_link"
    t.string   "critical_review_link"
    t.string   "see_more_review"
    t.string   "postive_review_by"
    t.string   "critical_review_by"
    t.string   "postive_howmany"
    t.string   "critical_howmany"
    t.text     "postive_review"
    t.text     "critical_review"
    t.text     "description"
    t.text     "description_01"
    t.text     "description_02"
    t.text     "description_03"
    t.text     "description_04"
    t.text     "description_05"
    t.text     "amazon_prime"
    t.text     "free_shipping"
    t.string   "amazon_visa_card"
    t.text     "amazon_visa_card_link"
    t.string   "buy_used"
    t.text     "buy_used_link"
    t.string   "coupon"
    t.text     "coupon_link"
    t.string   "discount_code"
    t.text     "discount_code_link"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "category_id"
    t.integer  "pcategory_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pcategories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "shoes", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.text     "description"
    t.string   "main_img"
    t.string   "sub_img_01"
    t.string   "sub_img_02"
    t.string   "sub_img_03"
    t.string   "sub_img_04"
    t.string   "sub_img_05"
    t.string   "sub_img_06"
    t.string   "brand"
    t.string   "offer_price"
    t.string   "before_price"
    t.string   "sale"
    t.string   "option_01"
    t.string   "option_02"
    t.string   "option_03"
    t.string   "option_04"
    t.string   "option_05"
    t.string   "option_06"
    t.string   "option_07"
    t.string   "option_08"
    t.string   "option_09"
    t.string   "option_10"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

  create_table "wishlist_ecommerces", force: :cascade do |t|
    t.integer  "wishlist_id"
    t.integer  "ecommerce_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "wishlists", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
