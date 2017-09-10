class Daily < ApplicationRecord

  validates :date, presence: true, uniqueness: true

  belongs_to :week
  has_many :completed_outcomes
  has_many :batches, through: :completed_outcomes
  has_many :learning_outcomes, through: :completed_outcomes

  enum day: {
    'Unassigned': 0,
    'Monday': 1,
    'Tuesday': 2,
    'Wednesday': 3,
    'Thursday': 4,
    'Friday': 5
  }

end
