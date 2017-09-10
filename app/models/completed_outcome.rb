class CompletedOutcome < ApplicationRecord

  belongs_to :batch
  belongs_to :learning_outcome
  belongs_to :daily

end
