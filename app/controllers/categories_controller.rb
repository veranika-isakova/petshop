class CategoriesController < ApplicationController

  def show
    @categories = @pet.categories
  end

def index
 @categories = Category.all
end

end
