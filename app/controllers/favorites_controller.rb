class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = current_user.favorite_recipes
  end

  def show
    @recipe = current_user.favorite_recipes.find(params[:id])
  end

  def create
    recipe = Recipe.create!(
      title: params[:title],
      instructions: params[:instructions]
    )

    current_user.favorites.create!(recipe: recipe)

    redirect_to root_path, notice: "レシピを保存しました"
  end

  def destroy
    favorite = current_user.favorites.find_by!(recipe_id: params[:id])
    favorite.destroy

    redirect_to favorites_path, notice: "保存したレシピを削除しました"
  end
end
