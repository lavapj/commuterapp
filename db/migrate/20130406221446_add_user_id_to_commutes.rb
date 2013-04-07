class AddUserIdToCommutes < ActiveRecord::Migration
  def change
    add_column :commutes, :user_id, :integer
  end
end
