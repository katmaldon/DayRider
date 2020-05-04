class Bike < ApplicationRecord

  belongs_to :owner
  has_many :bike_rentals
  has_many :renters, through: :bike_rentals

end
