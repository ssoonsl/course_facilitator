class Batch < ApplicationRecord

  validates :code, presence: true, uniqueness: { case_sensitive: false }
  validates :start_date, presence: true

  has_many :week_plans, dependent: :destroy
  has_many :batch_objectives
  has_many :learning_objectives, through: :batch_objectives

end
