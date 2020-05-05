class Bike < ApplicationRecord

  belongs_to :owner
  has_many :rentals
  has_many :renters, through: :rentals

  def reserve
    self.availability? != self.availability?
  end

  def self.available_bikes
    Bike.all.select {|bike| bike.availability? == true}
  end
  

end
