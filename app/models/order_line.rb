class OrderLine
  attr_reader :pet, :amount
  attr_accessor :added_at, :price

  def initialize(pet, amount)
    @pet = pet
    @pet_id = pet.id
    @amount = amount
    @added_at = Time.now
    # Store the price at time of purchase
    @price = pet.price
  end

  def to_hash
    {
      pet_id: @pet_id,
      amount: @amount,
      added_at: @added_at,
      price: @price
    }
  end

  def self.from_hash(line_hash)
    pet = Pet.where(id: line_hash[:pet_id]).first
    return if pet.nil?

    line = OrderLine.new(pet, line_hash[:amount])
    line.added_at = line_hash[:added_at]
    line.price = line_hash[:price]
    line
  end
end
