class DayPlan < ApplicationRecord

  validates :day, presence: true

  belongs_to :week_plan
  has_many :batch_objectives

end
