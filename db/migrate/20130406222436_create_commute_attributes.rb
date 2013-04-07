class CreateCommuteAttributes < ActiveRecord::Migration
  def change
    create_table :commute_attributes do |t|
      t.integer :cash
      t.boolean :cash_fr
      t.integer :calories
      t.boolean :calories_fr
      t.integer :envfp
      t.boolean :envfp_fr
      t.text :commute_type
      t.integer :passenger

      t.timestamps
    end
  end
end
