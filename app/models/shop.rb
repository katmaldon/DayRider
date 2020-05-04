class Shop < ApplicationRecord

  has_many :rentals
  has_many :bikes, through: :rentals
  has_many :renters, through: :rentals

end
