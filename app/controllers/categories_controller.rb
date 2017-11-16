class CategoriesController < ApplicationController
  before_action :set_category

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @pets = @category.pets
  end


  private

    def set_category
      @category = Category(params[:id])

    end
end
