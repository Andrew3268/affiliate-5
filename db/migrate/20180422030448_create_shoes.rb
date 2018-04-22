class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :title
      t.string :link
      t.text :description
      t.string :main_img
      t.string :sub_img_01
      t.string :sub_img_02
      t.string :sub_img_03
      t.string :sub_img_04
      t.string :sub_img_05
      t.string :sub_img_06
      t.string :brand
      t.string :offer_price
      t.string :before_price
      t.string :sale
      t.string :option_01
      t.string :option_02
      t.string :option_03
      t.string :option_04
      t.string :option_05
      t.string :option_06
      t.string :option_07
      t.string :option_08
      t.string :option_09
      t.string :option_10

      t.timestamps null: false
    end
  end
end
