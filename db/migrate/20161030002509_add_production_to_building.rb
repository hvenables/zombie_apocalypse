class AddProductionToBuilding < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :production, :integer
  end
end
