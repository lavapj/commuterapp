class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.integer :distance

      t.timestamps
    end
  end
end
