class DayPlan < ApplicationRecord

  validates :day, presence: true

  belongs_to :week_plan

  has_many :batch_objectives
  has_many :learning_objectives, through: :batch_objectives

end
