class Renter < ApplicationRecord
  belongs_to :shop
  has_many :rentals
  has_many :bikes, through: :rentals

end
