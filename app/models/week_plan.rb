class WeekPlan < ApplicationRecord

  validates :week, presence: true
  validates :start_date, presence: true

  belongs_to :batch
  has_many :day_plans
  has_many :batch_objectives

end
