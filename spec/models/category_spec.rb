require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      category = Category.new(name: nil)
      category.valid?
      expect(category.errors).to have_key(:name)
    end
  end
  describe "association with pet" do
let(:category) { create :category }
let!(:pet) { create :pet, category: category }

it "has many pets" do
  pet1 = category.pets.new(name: Faker::Lorem.words(1))
  pet2 = category.pets.new(name: Faker::Lorem.words(1))
  pet3 = category.pets.new(name: Faker::Lorem.words(1))
  pet4 = category.pets.new(name: Faker::Lorem.words(1))


  expect(category.pets).to include(pet1)
  expect(category.pets).to include(pet2)
  expect(category.pets).to include(pet3)
  expect(category.pets).to include(pet4)
end
end
end
