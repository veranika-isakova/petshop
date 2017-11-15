class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @categories = @pet.categories
  end


def index
 @categories = Category.all
end

end
