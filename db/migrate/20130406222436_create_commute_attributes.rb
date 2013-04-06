class CreateCommuteAttributes < ActiveRecord::Migration
  def change
    create_table :commute_attributes do |t|
      t.integer :cash
      t.integer :calories
      t.integer :envfp
      t.text :commute_type

      t.timestamps
    end
  end
end
