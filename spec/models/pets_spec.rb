require 'rails_helper'

RSpec.describe Pet, type: :model do

  describe "validations" do

    it "is invalid without a name" do
      pet = Pet.new(name: "")
      pet.valid?
      expect(pet.errors).to have_key(:name)
    end

    it "is invalid without a species" do
      pet = Pet.new(species: nil)
      pet.valid?
      expect(pet.errors).to have_key(:species)
    end

    it "is invalid without a gender" do
      pet = Pet.new(gender: nil)
      pet.valid?
      expect(pet.errors).to have_key(:gender)
    end
    it "is invalid without an age" do
      pet = Pet.new(age: nil)
      pet.valid?
      expect(pet.errors).to have_key(:age)
    end
    it "is invalid without a price" do
      pet = Pet.new(price: nil)
      pet.valid?
      expect(pet.errors).to have_key(:price)
    end
    it "is invalid without an image" do
      pet = Pet.new(remote_image_url: nil)
      pet.valid?
      expect(pet.errors).to have_key(:remote_image_url)
    end
  end
  describe "association with category" do
  let(:category) { create :category }

  it "belongs to a category" do
    pet = category.pets.build(name: Faker::Cat.name)

    expect(pet.category).to eq(category)
  end
end
end
