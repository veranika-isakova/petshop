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
   @cart = @shopping_cart
   @cart.destroy
   session[:cart_id] = nil
   redirect_to root_path
    end

  private

  def cart
    session[:shopping_cart] ||= []
    ShoppingCart.new(session[:shopping_cart])
  end
end
