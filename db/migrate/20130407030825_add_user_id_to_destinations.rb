class AddUserIdToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :user_id, :integer
  end
end
