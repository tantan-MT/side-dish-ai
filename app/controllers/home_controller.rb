class HomeController < ApplicationController
  def index
    @categories = IngredientCategory.includes(:ingredients)
  end
end
