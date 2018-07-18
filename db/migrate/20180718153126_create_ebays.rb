class CreateEbays < ActiveRecord::Migration
  def change
    create_table :ebays do |t|

      t.string :ebay_title
      t.string :min_price
      t.string :max_price
      t.string :shipping_free
      t.string :retrun_free
      t.string :both_free
      t.string :ebay_option_01
      t.string :ebay_option_02
      t.string :ebay_option_03
      t.string :ebay_option_04
      t.string :ebay_option_05
      t.string :ebay_option_06
      t.string :ebay_option_07

      t.timestamps null: false
    end
  end
end
