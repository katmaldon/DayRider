class Rental < ApplicationRecord

  belongs_to :renter
  belongs_to :bike

  # validates :bike_id, presence: true
  # validates :renter_id, presence: true


end
