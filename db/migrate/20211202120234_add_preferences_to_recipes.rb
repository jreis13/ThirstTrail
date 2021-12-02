class AddPreferencesToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :event_type, :string
    add_column :recipes, :alcohol, :string
    add_column :recipes, :cocktail_category, :string
  end
end
