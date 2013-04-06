class AddCommuteTypeIdToCommutes < ActiveRecord::Migration
  def change
    add_column :commutes, :commutetype_id, :integer
  end
end
