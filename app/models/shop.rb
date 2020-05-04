class Shop < ApplicationRecord

  has_many :bike_rentals
  has_many :bikes, through: :bike_rentals
  has_many :renters, through: :bike_rentals

end
