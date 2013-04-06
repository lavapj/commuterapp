class AddCommuteTypeIdToCommutes < ActiveRecord::Migration
  def change
    add_column :commutes, :commutetype_id, :reference
  end
end
