class CreateCurations < ActiveRecord::Migration
  def change
    create_table :curations do |t|

      t.string :cr_title
      t.string :cr_url
      t.string :cr_img
      t.string :cr_youtube01
      t.string :cr_youtube02
      t.string :cr_bprice
      t.string :cr_aprice
      t.string :cr_sales
      t.string :cr_source
      t.string :cr_option_01
      t.string :cr_option_02
      t.string :cr_option_03
      t.string :cr_option_04
      t.string :cr_option_05
      t.string :cr_option_06
      t.text :cr_intro
      t.string :cr_spare_01
      t.string :cr_spare_02
      t.string :cr_spare_03
      t.string :cr_spare_04
      t.string :cr_spare_05
      t.text :cr_spare_06
      t.text :cr_spare_07
      t.text :cr_spare_08

      t.timestamps null: false
    end
  end
end
