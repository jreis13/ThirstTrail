class AddPreferencesToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :event_type, :string, array: true
    add_column :recipes, :cocktail_category, :string, array: true
    add_column :recipes, :alcohol, :string
  end
end
