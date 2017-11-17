class CategoriesController < ApplicationController
  # before_action :set_category

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @pets = @category.pets
    @categories = Category.all
  end



end
