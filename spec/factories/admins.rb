FactoryGirl.define do
  factory :admin do
    sequence(:username) { |n| "admin#{n}" }
    sequence(:email) { |n| "admin#{n}@mail.com" }
    password '123123'
    job_title 'staff'
  end
end
