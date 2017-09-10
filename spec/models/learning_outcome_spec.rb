require 'rails_helper'

RSpec.describe Learning Outcome, type: :model do

  it { should validate_presence_of(:description) }

  describe 'validates uniqueness of description' do
    
  end

end
