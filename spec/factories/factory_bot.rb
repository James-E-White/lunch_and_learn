FactoryBot.define do
  factory :user, class: 'User' do
    name { Faker::Movie::Lebowski.character }
    email { Faker::Internet.unique.email }
  end
end