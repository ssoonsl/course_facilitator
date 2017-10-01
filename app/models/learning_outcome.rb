class LearningOutcome < ApplicationRecord

  validates :description, presence: true

  belongs_to :learning_objective, optional: true

  has_many :batch_objectives

end
