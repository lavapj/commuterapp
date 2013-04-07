class CreateCommutesCommutetypes < ActiveRecord::Migration
  def change
    create_table :commutes_commutetypes, :id => false do |t|
      t.integer :commute_id
      t.integer :commutetype_id
    end
  end
end
