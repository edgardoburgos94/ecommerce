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

ActiveRecord::Schema.define(version: 20180308222508) do

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_favourites_on_supplier_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "product_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_likes_on_product_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "list_groups", force: :cascade do |t|
    t.integer "quantity"
    t.float "subtotal"
    t.float "shipping"
    t.float "discount"
    t.float "total"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "list_id"
    t.index ["list_id"], name: "index_list_groups_on_list_id"
    t.index ["order_id"], name: "index_list_groups_on_order_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.integer "supplier_id"
    t.boolean "free_shipping"
    t.boolean "promotion"
    t.boolean "quantity"
    t.boolean "price"
    t.integer "q2"
    t.integer "q1"
    t.integer "q3"
    t.integer "q4"
    t.float "p_q1"
    t.float "p_q2"
    t.float "p_q3"
    t.float "p_q4"
    t.float "p1"
    t.float "p2"
    t.float "p3"
    t.float "p4"
    t.float "p_p1"
    t.float "p_p2"
    t.float "p_p3"
    t.float "p_p4"
    t.integer "sq1"
    t.integer "sq2"
    t.integer "sq3"
    t.integer "sq4"
    t.float "sp_q1"
    t.float "sp_q2"
    t.float "sp_q3"
    t.float "sp_q4"
    t.float "sp1"
    t.float "sp2"
    t.float "sp3"
    t.float "sp4"
    t.float "sp_p1"
    t.float "sp_p2"
    t.float "sp_p3"
    t.float "sp_p4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_lists_on_supplier_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "product_id"
    t.float "unit_price"
    t.integer "quantity"
    t.float "total_price"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "discount"
    t.float "shipping"
    t.integer "list_group_id"
    t.index ["list_group_id"], name: "index_order_items_on_list_group_id"
  end

  create_table "orders", force: :cascade do |t|
    t.float "subtotal"
    t.float "total"
    t.float "tax"
    t.float "shipping"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_comments", force: :cascade do |t|
    t.text "body"
    t.integer "product_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_comments_on_product_id"
    t.index ["user_id"], name: "index_product_comments_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "price"
    t.string "img_url"
    t.string "img_url2"
    t.string "img_url3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "xs"
    t.integer "s"
    t.integer "m"
    t.integer "l"
    t.integer "xl"
    t.integer "xxl"
    t.integer "unique"
    t.float "p_registered_user"
    t.float "p_day"
    t.float "p_q1"
    t.float "p_q2"
    t.float "p_q3"
    t.float "p_q4"
    t.integer "q1"
    t.integer "q2"
    t.integer "q3"
    t.integer "q4"
    t.integer "supplier_id"
    t.integer "sub_category_id"
    t.integer "list_id"
    t.index ["list_id"], name: "index_products_on_list_id"
    t.index ["sub_category_id"], name: "index_products_on_sub_category_id"
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "title"
    t.string "img_url"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "supplier_comments", force: :cascade do |t|
    t.text "body"
    t.integer "supplier_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_supplier_comments_on_supplier_id"
    t.index ["user_id"], name: "index_supplier_comments_on_user_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.text "description"
    t.string "cel"
    t.string "dir"
    t.string "country"
    t.string "city"
    t.integer "sales"
    t.string "state"
    t.string "phone"
    t.string "profile_img"
    t.string "cover_img"
    t.index ["email"], name: "index_suppliers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_suppliers_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.string "cel"
    t.string "dir"
    t.string "country"
    t.string "city"
    t.integer "purchases"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
