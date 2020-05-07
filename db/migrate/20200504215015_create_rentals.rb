class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|

      t.integer :bike_id
      t.integer :renter_id
      t.float :price
      t.date :day
      t.string :comment, default: nil
      t.float :rating, default: nil

      t.timestamps

    end
  end
end
