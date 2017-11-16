require 'rails_helper'

describe ShoppingCart do
  let(:cart) { ShoppingCart.new }
  let(:pet) { Pet.new(name: "Tea", price: 150) }

  it { expect(cart.pets.size).to be 0 }

  describe "#add_pet" do
    it "only accepts pets" do
      expect { cart.add_pet("garbage") }.to raise_error(ArgumentError)
      expect { cart.add_pet(pet) }.not_to raise_error
    end

    it "adds the pet to the @pets" do
      cart.add_pet(pet)
      expect { cart.pets.to include(pet) }
    end
  end
end
