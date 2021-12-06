class AddIngredientToPreferences < ActiveRecord::Migration[6.1]
  def change
    add_column :preferences, :ingredient, :string
  end
end
