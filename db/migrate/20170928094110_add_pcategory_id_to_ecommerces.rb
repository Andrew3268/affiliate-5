class AddPcategoryIdToEcommerces < ActiveRecord::Migration
  def change
    add_column :ecommerces, :pcategory_id, :integer
  end
end
