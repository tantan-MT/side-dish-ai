class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    recipe = Recipe.create!(
      title: params[:title],
      instructions: params[:instructions]
    )

    current_user.favorites.create!(recipe: recipe)

    redirect_to root_path, notice: "レシピを保存しました"
  end
end
