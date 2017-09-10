class Week < ApplicationRecord

  validates :number, presence: true

  has_many :dailies

end
