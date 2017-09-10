class Week < ApplicationRecord

  validates :number, presence: true

  belongs_to :batch
  has_many :dailies

end
