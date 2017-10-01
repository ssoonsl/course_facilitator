class Batch < ApplicationRecord

  validates :code, presence: true, uniqueness: { case_sensitive: false }
  validates :start_date, presence: true

  has_many :weeks, dependent: :destroy

end
