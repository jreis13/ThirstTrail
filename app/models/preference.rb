class Preference < ApplicationRecord
  belongs_to :user
  has_many :preference_ingredients
  has_many :ingredients, through: :preference_ingredients
end
