class BatchObjective < ApplicationRecord

  belongs_to :batch
  belongs_to :week_plan, optional: true
  belongs_to :day_plan, optional: true
  belongs_to :learning_objective
  belongs_to :learning_outcome, optional: true

end
