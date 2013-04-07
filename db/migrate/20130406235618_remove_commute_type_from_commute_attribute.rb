class RemoveCommuteTypeFromCommuteAttribute < ActiveRecord::Migration
  def up
    remove_column :commute_attributes, :commute_type
  end

  def down
    add_column :commute_attributes, :commute_type, :text
  end
end
