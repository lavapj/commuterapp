class AddPassengerToCommutes < ActiveRecord::Migration
  def change
    add_column :commutes, :passenger, :integer
  end
end
