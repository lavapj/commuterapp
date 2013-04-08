class FixCommutesScheme < ActiveRecord::Migration
  def up
    rename_table :commutetypes, :commute_types
    add_column :commute_types, :is_baseline, :boolean
    add_column :commutes, :commute_type_id, :integer
    rename_column :commute_attributes, :commutetype_id, :commute_type_id
  end

  def down
    rename_column :commute_attributes, :commute_type_id, :commutetype_id
    remove_column :commutes, :commute_type_id, :integer
    remove_column :commute_types, :is_baseline, :boolean
    rename_table :commute_types, :commutetypes
  end
end
