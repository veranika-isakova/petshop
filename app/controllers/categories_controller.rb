class CategoriesController < ApplicationController

  def show
    @categories = @pet.categories
  end
end
