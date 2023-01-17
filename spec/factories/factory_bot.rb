FactoryBot.define do
  factory :user do
    name { Faker::Movie::StarWars.character }
    email { Faker::Internet.unique.email }
  end
end