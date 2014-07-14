class ChangeEnabledType < ActiveRecord::Migration
  def change
    change_column :stations, :enabled, :int
  end
end
