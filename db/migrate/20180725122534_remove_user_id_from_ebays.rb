class RemoveUserIdFromEbays < ActiveRecord::Migration
  def change
    remove_column :ebays, :user_id, :integer
  end
end
