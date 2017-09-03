class CreateWishlistEcommerces < ActiveRecord::Migration
  def change
    create_table :wishlist_ecommerces do |t|
      
      t.integer :wishlist_id
      t.integer :ecommerce_id

      t.timestamps null: false
    end
  end
end
