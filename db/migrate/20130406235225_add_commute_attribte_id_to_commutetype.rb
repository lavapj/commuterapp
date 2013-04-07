class AddCommuteAttribteIdToCommutetype < ActiveRecord::Migration
  def change
    add_column :commutetypes, :commute_attribute_id, :integer
  end
end
