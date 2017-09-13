class CompletedOutcome < ApplicationRecord

  belongs_to :learning_outcome
  belongs_to :daily

end
