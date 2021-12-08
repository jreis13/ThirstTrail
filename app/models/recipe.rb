class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :favourites
  has_many :users, through: :favourites

  has_many :ingredients, through: :recipe_ingredients
end
