class RecipesController < ApplicationController
  def create
    ingredient_ids = params[:ingredient_ids]
    ingredients = Ingredient.where(id: ingredient_ids)

    recipe_data =
      if Rails.env.test?
        {
          title: "テストレシピ",
          description: "テスト用",
          ingredients: ingredients.map(&:name),
          steps: [ "切る", "炒める" ]
        }
      else
        RecipeGenerator.new.generate(ingredients.map(&:name))
      end

    recipe = Recipe.create!(
      title: recipe_data[:title].to_s,
      description: recipe_data[:description].to_s
    )

    # =========================
    # 🔥 ここが重要（中間テーブル）
    # =========================
    recipe.ingredients << ingredients

    # stepsはカラム保存
    recipe.update!(
      steps: recipe_data[:steps].to_json
    )

    redirect_to recipe_path(recipe)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients.pluck(:name)
    @steps = JSON.parse(@recipe.steps || "[]")
  end
end
