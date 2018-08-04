class CreateCurations < ActiveRecord::Migration
  def change
    create_table :curations do |t|

      t.string :cr_title
      t.string :cr_url
      t.string :cr_img
      t.string :cr_youtube01
      t.string :cr_youtube02
      t.float :cr_bprice
      t.float :cr_aprice
      t.float :cr_sales
      t.text :cr_intro

      t.timestamps null: false
    end
  end
end
