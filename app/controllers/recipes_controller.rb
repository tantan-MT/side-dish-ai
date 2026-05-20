class RecipesController < ApplicationController
  def show
    ingredients = [ "にんじん", "玉ねぎ", "ピーマン", "じゃがいも" ]

    if Rails.env.test?
      @recipe = {
        title: "テストレシピ",
        description: "テスト用の説明",
        ingredients: [
          "にんじん 1本",
          "玉ねぎ 1/2個"
        ],
        steps: [
          "切る",
          "炒める",
          "完成"
        ]
      }
    else
      @recipe = RecipeGenerator.new.generate(ingredients)
    end
  end
end
