class Owner < ApplicationRecord

  has_many :bikes

  # validates :name, presence: true
  # validates :age, numericality {only_integer: true, greater_than_or_equal_to: 17}
  # validates :location, presence: true

end
