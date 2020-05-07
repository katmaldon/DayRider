class Bike < ApplicationRecord

  belongs_to :owner
  has_many :rentals
  has_many :renters, through: :rentals

  # validates :owner_id, presence: true
  # validates :model, presence: true
  # validates :size, numericality {only_integer: true}
  # validates :bike_type, presence: true


  def reserve
    self.availability? != self.availability?
  end

  def group_ratings
    self.rentals.select {|rental| rental.rating unless rental.rating.nil?}
  end
  
  def array_of_ratings
    unless self.rentals.empty?
      self.group_ratings.map {|rental| rental.rating}
    end
  end

  def average_rating
    unless self.rentals.empty?
      array_of_ratings.sum/ array_of_ratings.count
    end
  end
  
  
  def self.available_bikes
    Bike.all.select {|bike| bike.availability? == true}
  end

  def self.bikes_with_ratings
    Bike.all.select do |bike| 
      unless bike.group_ratings.empty?
        bike.group_ratings
      end
    end
  end
  
  # def self.most_popular_bike
  #   Bike.bikes_with_ratings.sort_by { |bike| bike.}
  # end
  # Bike.all.sort_by {|bike| bike.average_rating}
  # def self.random_bike_instance
  #   Bike.all.sample
  # end

end
