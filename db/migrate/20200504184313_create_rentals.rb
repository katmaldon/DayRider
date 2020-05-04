class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.integer :bike_id
      t.integer :user_id
      t.integer :shop_id
      t.float :price
      t.date :date
      t.float :rating
      t.string :comment

      t.timestamps
    end
  end
end
