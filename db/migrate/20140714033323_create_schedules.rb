class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.text :description
      t.references :program, index: true
      t.integer :start_time
      t.datetime :last_run

      t.timestamps
    end
  end
end
