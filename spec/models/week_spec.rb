require 'rails_helper'

RSpec.describe Week, type: :model do

  it { should validate_presence_of(:number) }

  it { should have_many(:dailies) }

end
