class LearningObjective < ApplicationRecord

  validates :name, presence: true

  has_many :learning_outcomes
  has_many :batch_objectives

end
