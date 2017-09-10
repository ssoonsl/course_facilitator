FactoryGirl.define do
  factory :learning_outcome do
    description 'testlearningoutcome'

    trait :invalid do
      description nil
    end
  end
end
