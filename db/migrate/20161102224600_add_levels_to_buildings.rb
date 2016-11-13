class AddLevelsToBuildings < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :level, :integer, default: 1
  end
end
