require 'rails_helper'

RSpec.describe Daily, type: :model do

  it { should validate_presence_of(:date) }

end
