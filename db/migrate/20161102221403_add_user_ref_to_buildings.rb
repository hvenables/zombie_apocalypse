class AddUserRefToBuildings < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :user_id, :integer
  end
end
