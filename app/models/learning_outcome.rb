class LearningOutcome < ApplicationRecord

  validates :description, presence: true, uniqueness: { case_sensitive: false }

end
