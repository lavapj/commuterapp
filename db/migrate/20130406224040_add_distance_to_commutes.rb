class AddDistanceToCommutes < ActiveRecord::Migration
  def change
    add_column :commutes, :distance, :integer
  end
end
