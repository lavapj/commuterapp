class CreateCommutes < ActiveRecord::Migration
  def change
    create_table :commutes do |t|
      t.string :name
      t.timestamp :start
      t.timestamp :end

      t.timestamps
    end
  end
end
