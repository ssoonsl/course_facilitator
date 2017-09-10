require 'rails_helper'

RSpec.describe CompletedOutcome, type: :model do

  it { should belong_to(:batch) }
  it { should belong_to(:learning_outcome) }
  it { should belong_to(:daily) }

end
