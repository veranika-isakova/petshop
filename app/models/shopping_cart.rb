class ShoppingCart
  attr_reader :order_lines

  def initialize(session = {})
    # Session comes from the controller
    @session = session

    session_lines = session[:shopping_cart] || []

    @order_lines = session_lines.map do |line|
      # Create new OrderLine instances from each Hash in the
      # session storage
      OrderLine.from_hash(line)
    end
  end

  def add_pet(pet, amount = 1)
    raise ArgumentError.new("Not a pet") unless pet.is_a?(Pet)

    if already_ordered?(pet)
      update_line(pet, amount)
    else
      @order_lines.push OrderLine.new(pet, amount)
      store!
    end

    return true
  end

  def remove_pet(pet, amount = 1)
    return false unless already_ordered?(pet)

    @order_lines.select! do |line|
      next if line.pet.id != pet.id

      line.amount -= amount
      amount > 0 # Remove the line if the amount is 0 or less
    end

    return true
  end

  def already_ordered?(pet)
    @order_lines.map(&:pet).map(&:id).include?(pet.id)
  end

  def update_line(pet, amount)
    return false unless already_ordered?(pet)

    @order_lines.each do |line|
      if line.pet.id == pet.id
        line.amount += amount
      end
    end

    store!

    return true
  end

  def store!
    @session[:shopping_cart] = @order_lines.map do |line|
      line.to_hash
    end
  end
end
