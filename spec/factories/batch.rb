FactoryGirl.define do
  factory :batch do
    code 'testbatch'

    trait :invalid do
      code nil
    end
  end
end
