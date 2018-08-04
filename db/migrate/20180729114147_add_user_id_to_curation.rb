class AddUserIdToCuration < ActiveRecord::Migration
  def change
    add_column :curations, :user_id, :integer
  end
end
