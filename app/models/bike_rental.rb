class BikeRental < ApplicationRecord

  belongs_to :renter
  belongs_to :bike
  belongs_to :shop

end
