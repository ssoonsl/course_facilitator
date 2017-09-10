class Batch < ApplicationRecord

  validates :code, presence: true, uniqueness: { case_sensitive: false }

  has_many :weeks

end
