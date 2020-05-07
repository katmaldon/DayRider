class Bike < ApplicationRecord

  belongs_to :owner
  has_many :rentals
  has_many :renters, through: :rentals

  def reserve
    self.availability? != self.availability?
  end

  def group_ratings
    rentals.select {|rental| rental.rating unless rental.rating == nil}
  end
  
  def array_of_ratings
    group_ratings.map {|rental| rental.rating}
  end

  def average_rating
    array_of_ratings.sum/ array_of_ratings.count
  end
  
  
  def self.available_bikes
    Bike.all.select {|bike| bike.availability? == true}
  end

  def self.random_bike_instance
    Bike.all.sample    
  end

end
