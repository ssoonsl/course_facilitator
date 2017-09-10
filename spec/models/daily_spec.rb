require 'rails_helper'

RSpec.describe Daily, type: :model do

  it { should validate_presence_of(:date) }

  it { should belong_to(:week) }
  it { should have_many(:completed_outcomes) }
  it { should have_many(:learning_outcomes).through(:completed_outcomes) }

  it { should define_enum_for(:day) }

end
