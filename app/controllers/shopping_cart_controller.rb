class ShoppingCartController < ApplicationController
  def index
    @order_lines = @shopping_cart.order_lines
  end

  def create
    # add_pet (pet, amount)
    # add something to it
    pet = Pet.find(params[:pet_id])
    amount = params[:amount]

    if shopping_cart.add_pet(pet, amount)
      # happy
    else
      # not so happy, something went wrong
    end
  end

  def destroy
    # remove something from it
  end

  private

  def cart
    session[:shopping_cart] ||= []
    ShoppingCart.new(session[:shopping_cart])
  end
end
