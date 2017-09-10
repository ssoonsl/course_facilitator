class LearningOutcome < ApplicationRecord

  validates :description, presence: true, uniqueness: { case_sensitive: false }
  validates :target, presence: true

  has_many :completed_outcomes
  has_many :dailies, through: :completed_outcomes

end
