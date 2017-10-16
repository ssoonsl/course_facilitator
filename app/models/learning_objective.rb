class LearningObjective < ApplicationRecord

  validates :name, presence: true

  has_many :learning_outcomes, dependent: :destroy
  has_many :batch_objectives, dependent: :destroy

  def self.retrieve_unused_objectives(batch)
    
  end

end
