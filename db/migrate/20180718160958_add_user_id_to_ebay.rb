class AddUserIdToEbay < ActiveRecord::Migration
  def change
    add_column :ebays, :user_id, :integer
  end
end
