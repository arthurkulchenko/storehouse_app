FactoryGirl.define do
  sequence(:email) { |n| "user2.#{n+n}@example.com" }
  factory :user do
    name "users name"
    email
    password '12345678'
    password_confirmation '12345678'
    role 'noob'
  end
end