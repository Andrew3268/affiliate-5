class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      
       t.text :name
       t.text :email
       t.string :content

      t.timestamps null: false
    end
  end
end
