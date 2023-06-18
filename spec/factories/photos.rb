FactoryBot.define do
  factory :photo do
    name {Faker::Lorem.sentence}
    text {Faker::Lorem.sentence}
    image {Faker::Lorem.sentence}
    association :user 
  end
end