class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :discount_title
      t.string :discount_category
      t.string :discount_image
      t.string :discount_code
      t.string :discount_date
      t.string :discount_sale
      t.string :discount_source
      t.string :discount_link_01
      t.string :discount_link_02
      t.text :discount_offer
      t.string :discount_amazon
      t.text :discount_amazon_card
      t.text :discount_used
      t.string :discount_used_link
      t.text :discount_coupon
      t.string :discount_spare_01
      t.string :discount_spare_02
      t.string :discount_spare_03
      t.text :discount_spare_04
      t.text :discount_spare_05

      t.timestamps null: false
    end
  end
end
