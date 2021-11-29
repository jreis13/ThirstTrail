class PreferenceIngredient < ApplicationRecord
  belongs_to :preference
  belongs_to :ingredient
end
