class DayPlan < ApplicationRecord

  validates :day, presence: true

  belongs_to :week
  has_many :batch_objectives

end
