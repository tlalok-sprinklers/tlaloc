class CreateProgramStations < ActiveRecord::Migration
  def change
    create_table :program_stations do |t|
      t.references :program, index: true
      t.references :station, index: true
      t.integer :duration
      t.integer :order

      t.timestamps
    end
  end
end
