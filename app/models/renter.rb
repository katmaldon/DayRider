class Renter < ApplicationRecord
  belongs_to :shop
  has_many :rentals
  has_many :bikes, through: :rentals

  # validates :name, :location, presence: true
  # validates :age, numericality: {greater_than_or_equal_to: 18}


end
