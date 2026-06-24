class Recipe < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end
