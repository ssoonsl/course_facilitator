require 'rails_helper'

RSpec.describe Instructor, type: :model do

  it { should validate_presence_of(:username) }

  describe 'validates uniqueness of username' do
    # let(:instructor) { create(:instructor) }
    subject { Instructor.create(username: 'testinstructor', email: 'test@mail.com', password: '123123') }
    it { should validate_uniqueness_of(:username).case_insensitive }
  end

end
