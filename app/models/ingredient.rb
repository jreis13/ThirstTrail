class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  has_many :preference_ingredients
  has_many :preferences, through: :preference_ingredients
end
