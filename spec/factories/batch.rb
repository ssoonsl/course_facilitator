FactoryGirl.define do
  factory :batch do
    sequence(:code) { |n| "batch#{n}" }

    trait :invalid do
      code nil
    end
  end
end
