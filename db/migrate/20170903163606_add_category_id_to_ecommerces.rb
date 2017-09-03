class AddCategoryIdToEcommerces < ActiveRecord::Migration
  def change
    add_column :ecommerces, :category_id, :integer
  end
end
