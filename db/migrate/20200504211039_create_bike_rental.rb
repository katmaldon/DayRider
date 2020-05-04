class BikeRental < ActiveRecord::Migration[6.0]
  def change
    create_table :bike_rentals do |t|
      t.integer :bike_id
      t.integer :renter_id
      t.integer :shop_id
      t.float :price
      t.date :day
      t.string :comment, default: nil
      t.float :rating, default: nil

      t.timestamps

    end

  end
end
