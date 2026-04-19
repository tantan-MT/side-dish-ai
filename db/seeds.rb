# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
vegetable = IngredientCategory.find_or_create_by!(name: "野菜")
meat_fish = IngredientCategory.find_or_create_by!(name: "肉・魚介")
other = IngredientCategory.find_or_create_by!(name: "卵・その他")

[ "にんじん", "玉ねぎ", "じゃがいも", "キャベツ", "トマト" ].each do |name|
  Ingredient.find_or_create_by!(name: name, ingredient_category: vegetable)
end

[ "ベーコン", "ソーセージ", "ツナ缶" ].each do |name|
  Ingredient.find_or_create_by!(name: name, ingredient_category: meat_fish)
end

[ "卵", "チーズ" ].each do |name|
  Ingredient.find_or_create_by!(name: name, ingredient_category: other)
end
