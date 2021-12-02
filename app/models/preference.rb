class Preference < ApplicationRecord
  has_many :preference_ingredients
  has_many :ingredients, through: :preference_ingredients
end
