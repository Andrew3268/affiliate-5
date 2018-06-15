class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|

      t.string :bag_title
      t.string :bag_link
      t.text :bag_description
      t.string :bag_main_img
      t.string :bag_sub_img_01
      t.string :bag_sub_img_02
      t.string :bag_sub_img_03
      t.string :bag_sub_img_04
      t.string :bag_sub_img_05
      t.string :bag_sub_img_06
      t.string :bag_brand
      t.string :bag_offer_price
      t.string :bag_before_price
      t.string :bag_sale
      t.string :bag_option_01
      t.string :bag_option_02
      t.string :bag_option_03
      t.string :bag_option_04
      t.string :bag_option_05
      t.string :bag_option_06
      t.string :bag_option_07
      t.string :bag_option_08
      t.string :bag_option_09
      t.string :bag_option_10
      t.string :bag_spare_01
      t.string :bag_spare_02
      t.string :bag_spare_03
      t.string :bag_spare_04
      t.string :bag_spare_05
      t.text :bag_spare_06
      t.text :bag_spare_07
      t.text :bag_spare_08
      t.text :bag_spare_09
      t.text :bag_spare_10

      t.timestamps null: false
    end
  end
end
