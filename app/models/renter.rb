class Renter < ApplicationRecord
  belongs_to :shop
  has_many :rentals
  has_many :bikes, through: :rentals

  # validates :name, presence: true
  # validates :age, numericality {only_integer: true, greater_than_or_equal_to: 17}
  # validates :location, presence: true


end
