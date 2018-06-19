class AddUserIdToAccessory < ActiveRecord::Migration
  def change
    add_column :accessories, :user_id, :integer
  end
end
