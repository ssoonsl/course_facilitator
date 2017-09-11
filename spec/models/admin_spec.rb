require 'rails_helper'

RSpec.describe Admin, type: :model do

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:job_title) }

  describe 'validates uniqueness of username' do
    subject { Admin.create(username: 'testadmin', email: 'testadmin@mail.com', password: '123123', job_title: 'staff') }
    it { should validate_uniqueness_of(:username).case_insensitive }
  end

end
