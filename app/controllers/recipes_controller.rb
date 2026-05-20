class RecipesController < ApplicationController
  def show
    ingredients = ["にんじん", "玉ねぎ", "ピーマン", "じゃがいも"]
    @recipe = RecipeGenerator.new.generate(ingredients)
  end
end
