class Daily < ApplicationRecord

  validates :date, presence: true, uniqueness: true

  has_many :completed_outcomes
  has_many :batches, through: :completed_outcomes
  has_many :learning_outcomes, through: :completed_outcomes

end
