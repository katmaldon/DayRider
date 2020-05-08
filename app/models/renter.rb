class Renter < ApplicationRecord
  belongs_to :shop
  has_many :rentals
  has_many :bikes, through: :rentals

  has_secure_password

  validates :name, presence: true
  #validates :age, numericality: greater_than_or_equal_to 18
  #validates :location, presence: true


end
