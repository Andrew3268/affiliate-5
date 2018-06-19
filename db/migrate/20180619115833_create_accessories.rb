class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|

      t.string :acc_title
      t.string :acc_link
      t.text :acc_description
      t.string :acc_main_img
      t.string :acc_sub_img_01
      t.string :acc_sub_img_02
      t.string :acc_sub_img_03
      t.string :acc_sub_img_04
      t.string :acc_sub_img_05
      t.string :acc_sub_img_06
      t.string :acc_brand
      t.string :acc_offer_price
      t.string :acc_before_price
      t.string :acc_sale
      t.string :acc_option_01
      t.string :acc_option_02
      t.string :acc_option_03
      t.string :acc_option_04
      t.string :acc_option_05
      t.string :acc_option_06
      t.string :acc_option_07
      t.string :acc_option_08
      t.string :acc_option_09
      t.string :acc_option_10
      t.string :acc_spare_01
      t.string :acc_spare_02
      t.string :acc_spare_03
      t.string :acc_spare_04
      t.string :acc_spare_05
      t.text :acc_spare_06
      t.text :acc_spare_07
      t.text :acc_spare_08
      t.text :acc_spare_09
      t.text :acc_spare_10

      t.timestamps null: false
    end
  end
end
