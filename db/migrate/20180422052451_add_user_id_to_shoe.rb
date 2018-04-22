class AddUserIdToShoe < ActiveRecord::Migration
  def change
    add_column :shoes, :user_id, :integer
  end
end
