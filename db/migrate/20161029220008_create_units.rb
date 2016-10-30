class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.integer :health
      t.integer :damage
      t.string :type

      t.timestamps
    end
  end
end
