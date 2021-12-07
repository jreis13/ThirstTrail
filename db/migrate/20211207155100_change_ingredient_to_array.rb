class ChangeIngredientToArray < ActiveRecord::Migration[6.1]
  def change
    remove_column :preferences, :ingredient
    add_column :preferences, :ingredients, :text, array: true, default: []
  end
end
