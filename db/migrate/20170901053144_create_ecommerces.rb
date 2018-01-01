class CreateEcommerces < ActiveRecord::Migration
  def change
    create_table :ecommerces do |t|
      
      t.integer :user_id
      t.string :title
      t.string :image_main
      t.string :image_01
      t.string :image_02
      t.string :image_03
      t.string :image_04
      t.string :intro
      t.string :sources
      t.float :price_before
      t.float :price_after
      t.string :site_link  
      t.string :site_link_uk
      t.string :site_link_ca
      t.string :site_link_jp
      t.string :youtube_link_01
      t.string :youtube_link_02
      t.text :description
      t.text :description_01
      t.text :description_02
      t.text :description_03
      t.text :description_04
      t.text :description_05
      

      t.timestamps null: false
    end
  end
end
