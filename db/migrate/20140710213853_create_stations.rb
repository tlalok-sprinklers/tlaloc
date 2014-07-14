class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.text :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
