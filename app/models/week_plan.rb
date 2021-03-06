class WeekPlan < ApplicationRecord

  validates :week, presence: true
  validates :start_date, presence: true

  belongs_to :batch
  has_many :day_plans, dependent: :destroy
  
  has_many :batch_objectives
  has_many :learning_objectives, through: :batch_objectives

end
