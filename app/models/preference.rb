class Preference < ApplicationRecord
  belongs_to :user
  has_many :preference_ingredients
  has_many :ingredients, through: :preference_ingredients
  validates :event_type, :alcohol, :cocktail_category, presence: true
end
