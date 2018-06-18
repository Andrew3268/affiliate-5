class AddUserIdToClothe < ActiveRecord::Migration
  def change
    add_column :clothes, :user_id, :integer
  end
end
