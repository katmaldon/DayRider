class CreateRenters < ActiveRecord::Migration[6.0]
  def change
    create_table :renters do |t|
      t.string :name
      t.integer :age
      t.string :location

      t.timestamps
    end
  end
end
