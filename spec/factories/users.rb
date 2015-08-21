require 'faker'

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password "Passw0rd"
    password_confirmation "Passw0rd"
  end

  factory :admin, class: User do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password "Passw0rd"
    password_confirmation "Passw0rd"
    admin true
  end
end
