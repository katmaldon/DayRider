class Owner < ApplicationRecord

  has_many :bikes

  # validates: :name, presence: true
  # validates: :age, numerality: [greater_than 17]

end
