FactoryGirl.define do
  factory :instructor do
    sequence(:username) { |n| "testinstructor#{n}" }
    sequence(:email) { |n| "email#{n}@mail.com" }
    password '123123'
  end
end
