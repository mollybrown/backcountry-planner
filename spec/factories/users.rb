FactoryGirl.define do
  factory :user do
    provider "facebook"
    sequence :uid do |n|
      "000#{n}"
    end
    name Faker::Name.name
    email Faker::Internet.email
    image Faker::Avatar.image
    oauth_token "123456"
    oauth_expires_at Time.now + 1.week
  end
end
