class Batch < ApplicationRecord

  validates :code, presence: true, uniqueness: { case_sensitive: false }

  has_many :completed_outcomes
  has_many :dailies, through: :completed_outcomes
  has_many :learning_outcomes, through: :completed_outcomes

end
