FactoryGirl.define do
  factory :pet do
    name              { Faker::Cat.name }
    species           { Faker::Lorem.words(1) }
    gender            "Female"
    age               { Faker::Number.between(1, 25) }
    price             { Faker::Commerce.price }
    remote_image_url  { Faker::Avatar.image("my-own-slug") }
    category          { build(:category) }
  end
end
