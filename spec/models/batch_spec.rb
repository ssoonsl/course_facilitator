require 'rails_helper'

RSpec.describe Batch, type: :model do

  it { should validate_presence_of(:code) }

  describe 'validates uniqueness of username' do
    subject { Batch.create(code: 'testcode') }
    it { should validate_uniqueness_of(:code).case_insensitive }
  end

end
