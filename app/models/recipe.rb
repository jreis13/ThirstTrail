class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  acts_as_favoritable
  has_many :users, through: :favourites

  has_many :ingredients, through: :recipe_ingredients
end
