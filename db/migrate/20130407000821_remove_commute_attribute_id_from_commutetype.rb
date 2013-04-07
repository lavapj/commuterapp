class RemoveCommuteAttributeIdFromCommutetype < ActiveRecord::Migration
  def up
    remove_column :commutetypes, :commute_attribute_id
  end

  def down
    add_column :commutetypes, :commute_attribute_id, :integer
  end
end
