class AddCommutetypeIdToCommuteAttributes < ActiveRecord::Migration
  def change
    add_column :commute_attributes, :commutetype_id, :integer
  end
end
