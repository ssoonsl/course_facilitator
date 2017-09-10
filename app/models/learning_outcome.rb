class LearningOutcome < ApplicationRecord

  validates :description, presence: true, uniqueness: { case_sensitive: false }
  validates :week, presence: true

  has_many :completed_outcomes
  has_many :dailies, through: :completed_outcomes
  has_many :batches, through: :completed_outcomes

end
