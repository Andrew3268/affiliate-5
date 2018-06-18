class CreateClothes < ActiveRecord::Migration
  def change
    create_table :clothes do |t|

      t.string :clothes_title
      t.string :clothes_link
      t.text :clothes_description
      t.string :clothes_main_img
      t.string :clothes_sub_img_01
      t.string :clothes_sub_img_02
      t.string :clothes_sub_img_03
      t.string :clothes_sub_img_04
      t.string :clothes_sub_img_05
      t.string :clothes_sub_img_06
      t.string :clothes_brand
      t.string :clothes_offer_price
      t.string :clothes_before_price
      t.string :clothes_sale
      t.string :clothes_option_01
      t.string :clothes_option_02
      t.string :clothes_option_03
      t.string :clothes_option_04
      t.string :clothes_option_05
      t.string :clothes_option_06
      t.string :clothes_option_07
      t.string :clothes_option_08
      t.string :clothes_option_09
      t.string :clothes_option_10
      t.string :clothes_spare_01
      t.string :clothes_spare_02
      t.string :clothes_spare_03
      t.string :clothes_spare_04
      t.string :clothes_spare_05
      t.text :clothes_spare_06
      t.text :clothes_spare_07
      t.text :clothes_spare_08
      t.text :clothes_spare_09
      t.text :clothes_spare_10

      t.timestamps null: false
    end
  end
end
