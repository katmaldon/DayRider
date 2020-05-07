class Rental < ApplicationRecord

  belongs_to :renter
  belongs_to :bike

  #validates :bike_id, :renter_id, presence: true

end
