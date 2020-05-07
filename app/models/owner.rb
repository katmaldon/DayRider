class Owner < ApplicationRecord

  has_many :bikes

  #  validates :name, :location, presence: true
  #  validates :age, numericality: {greater_than_or_equal_to: 18}


end
