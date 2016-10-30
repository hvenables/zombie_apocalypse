class AddTypeToBuilding < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :type, :string
  end
end
