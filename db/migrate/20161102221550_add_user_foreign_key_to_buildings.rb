class AddUserForeignKeyToBuildings < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :buildings, :users
  end
end
