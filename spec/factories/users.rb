FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(10, 20, true, true) }
    username { Faker::Internet.user_name(8..10) }
  end
end
