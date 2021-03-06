require 'rails_helper'

RSpec.describe LearningOutcome, type: :model do

  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:target) }

  describe 'validates uniqueness of description' do
    subject { LearningOutcome.create(description: 'testlearningoutcome', target: 1) }
    it { should validate_uniqueness_of(:description).case_insensitive }
  end

  it { should have_many(:completed_outcomes) }
  it { should have_many(:dailies).through(:completed_outcomes) }

end
