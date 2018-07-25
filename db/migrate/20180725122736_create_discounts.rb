class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|

      t.string :eb_title
      t.string :eb_min_price
      t.string :eb_max_price
      t.string :eb_free_sh
      t.string :eb_free_rt
      t.string :eb_free_both
      t.string :eb_spare_01
      t.string :eb_spare_02
      t.string :eb_spare_03
      t.string :eb_spare_04
      t.string :eb_spare_05
      t.string :eb_spare_06
      t.string :eb_spare_07
      t.text :eb_spare_08
      t.text :eb_spare_09
      t.text :eb_spare_00


      t.timestamps null: false
    end
  end
end
