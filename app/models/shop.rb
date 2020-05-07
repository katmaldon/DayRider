class Shop < ApplicationRecord

  has_many :renters
  has_many :rentals, through: :renters

  # no validations


end
