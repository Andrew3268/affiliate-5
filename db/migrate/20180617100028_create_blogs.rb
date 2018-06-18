class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|

      t.string :blog_title
      t.string :blog_link
      t.string :blog_main_img
      t.string :blog_date
      t.text :blog_description
      t.string :blog_spare_01
      t.string :blog_spare_02
      t.string :blog_spare_03
      t.string :blog_spare_04
      t.string :blog_spare_05
      t.text :blog_spare_06
      t.text :blog_spare_07
      t.text :blog_spare_08

      t.timestamps null: false
    end
  end
end
