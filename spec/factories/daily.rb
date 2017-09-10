FactoryGirl.define do
  factory :daily do
    date Date.today
    goal 'test goal of success'
    morning 'morning plan'
    afterlunch 'afterlunch plan'
    afternoon 'afternoon plan'

    trait :invalid do
      date nil
    end
  end
end
