class Renter < ApplicationRecord

  has_many :bike_rentals
  has_many :bikes, through: :bike_rentals
  has_many :shops, through: :bike_rentals

end
