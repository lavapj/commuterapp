class RemoveCommutetypeIdFromCommutes < ActiveRecord::Migration
  def up
    remove_column :commutes, :commutetype_id
  end

  def down
    add_column :commutes, :commutetype_id, :integer
  end
end
