class Renter < ApplicationRecord

  has_many :rentals
  has_many :bikes, through: :rentals
  has_many :shops, through: :rentals

end
