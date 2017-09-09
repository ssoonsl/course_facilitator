FactoryGirl.define do
  factory :completed_outcome do
    association :batch, factory: :batch
    association :learning_outcome, factory: :learning_outcome
    association :daily, factory: :daily

    trait :invalid do
      learning_outcome nil
    end
  end
end
