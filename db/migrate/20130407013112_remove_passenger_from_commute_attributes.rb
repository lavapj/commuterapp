class RemovePassengerFromCommuteAttributes < ActiveRecord::Migration
  def up
    remove_column :commute_attributes, :passenger
  end

  def down
    add_column :commute_attributes, :passenger, :integer
  end
end
