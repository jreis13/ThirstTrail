class Preference < ApplicationRecord
  has_many :preference_ingredients
  has_many :ingredients, through: :recipe
  validates :event_type, :alcohol, :cocktail_category, presence: true
end
