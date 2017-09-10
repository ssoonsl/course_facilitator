FactoryGirl.define do
  factory :week do
    association :batch, factory: :batch
    number 1

    trait :invalid do
      batch nil
    end
  end
end
