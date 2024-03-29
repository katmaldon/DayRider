class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.integer :owner_id
      t.string :model
      t.integer :size
      t.string :bike_type
      t.boolean :availability?, default: false
      
      t.timestamps

    end
  end
end
