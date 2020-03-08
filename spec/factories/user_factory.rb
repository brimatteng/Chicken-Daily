FactoryBot.define do
  factory :user do
    email { |n| "bird#{n}@birdwatcher.com" }
    username { |n| "birdman#{n}" }
  end
end
