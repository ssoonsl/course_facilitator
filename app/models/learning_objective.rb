class LearningObjective < ApplicationRecord

  validates :name, presence: true

  has_many :learning_outcomes, dependent: :destroy

  has_many :batch_objectives, dependent: :destroy
  has_many :batches, through: :batch_objectives

  def self.retrieve_unused_objectives(batch)
    where.not(id: BatchObjective.where(batch: batch).select(:learning_objective_id))
  end

end
